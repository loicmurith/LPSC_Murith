----------------------------------------------------------------------------------
-- Company:     HES-SO - MSE
-- Engineer:    Loïc Murith
-- 
-- Create Date: 04/21/2020 05:30:25 PM
-- Design Name: 
-- Module Name: compute_mandleBrot - Behavioral
-- Project Name:    LPSC project
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mandelbrot_calculator is
generic ( COMMA    : integer := 15;  -- nombre de bits après la virgule
    MAX_ITER : integer := 100;
    SIZE     : integer := 18);
port(
    clk_i       : in    std_logic;
    rst_i       : in    std_logic;
    ready_o     : out   std_logic;
    start_i     : in    std_logic;
    finished_o  : out   std_logic;
    c_real_i    : in    std_logic_vector(SIZE-1 downto 0);
    c_imaginary_i : in    std_logic_vector(SIZE-1 downto 0);
    z_real_o    : out   std_logic_vector(SIZE-1 downto 0);
    z_imaginary_o : out   std_logic_vector(SIZE-1 downto 0);
    iterations_o : out   std_logic_vector(SIZE-1 downto 0)
);
end mandelbrot_calculator;

architecture Behavioral of mandelbrot_calculator is

    -- Creation of FSM states
    type state_t is (idle, compute1, compute2, compute3, compare);
    -- FSM functioning's signals
    signal state : state_t;
    signal cnt_iter_s : unsigned(SIZE-1 downto 0) := (others => '0');
    signal cReal_s : std_logic_vector(SIZE-1 downto 0);
    signal cImag_s : std_logic_vector(SIZE-1 downto 0);
    signal next_zReal_s : std_logic_vector(SIZE-1 downto 0);
    signal next_zImag_s : std_logic_vector(SIZE-1 downto 0);
    signal finalIntResult_s : std_logic_vector(2*(SIZE-COMMA)-1 downto 0);
    -- constant for FSM output compare
    constant sqRadius_c : unsigned(2*(SIZE-COMMA)-1 downto 0) := to_unsigned(4,2*(SIZE-COMMA));

    -- Constants to set DSP with correct math operation
    constant multNadd_c : std_logic_vector(0 downto 0) := "0";
    constant subNmult_c : std_logic_vector(0 downto 0) := "1";
    -- Constant to put DSP's C input to 0
    constant zero36bits_c : std_logic_vector((2*SIZE)-1 downto 0) := (OTHERS => '0');
    -- Constants to extend sign
    constant zerosCommaBits_c : std_logic_vector(COMMA-1 downto 0) := (OTHERS => '0');
    constant zerosExtend_c : std_logic_vector(SIZE-COMMA-1 downto 0) := (OTHERS => '0');
    constant onesExtend_c : std_logic_vector(SIZE-COMMA-1 downto 0) := (OTHERS => '1');
    
    -- Main signals to interract with entity
    signal zReal_s : std_logic_vector(SIZE-1 downto 0);
    signal zImag_s : std_logic_vector(SIZE-1 downto 0);
    signal zReal_double_s : std_logic_vector(SIZE-1 downto 0);
    signal cReal_extend_s : std_logic_vector((2*SIZE)-1 downto 0);
    signal cImag_extend_s : std_logic_vector((2*SIZE)-1 downto 0);
    -- inter DSPs signals
    signal zReal_subResOne_s : std_logic_vector((2*SIZE) downto 0);
    signal zImag_subResOne_s : std_logic_vector((2*SIZE) downto 0);
    signal zReal_subResTwo_s : std_logic_vector((2*SIZE) downto 0);
    signal zImag_subResTwo_s : std_logic_vector((2*SIZE) downto 0);
    signal finalResult_s : std_logic_vector((2*SIZE) downto 0);
    


    -- Component for all mathematic computations inMandlebrot's algorithme
    COMPONENT mathDSP
      PORT (
        CLK : IN STD_LOGIC;
        SEL : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
        C : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
        P : OUT STD_LOGIC_VECTOR(36 DOWNTO 0)
      );
    END COMPONENT;

begin

    -- wiring FSM and DSPs
    zReal_s <= next_zReal_s;
    zImag_s <= next_zImag_s;

    -- DSP to compute Z_Re_N+1 (first step)
    ZRe_step1 : mathDSP
      PORT MAP (
        CLK => clk_i,
        SEL => multNadd_c,
        A => zReal_s,
        B => zReal_s,
        C => cReal_extend_s,
        P => zReal_subResOne_s
      );
    -- Extension of cReal_s with correct sign
    cReal_extend_s <= (zerosExtend_c & cReal_s & zerosCommaBits_c) when (cReal_s(SIZE-1) = '0')
                        else (onesExtend_c & cReal_s & zerosCommaBits_c);
    
    -- DSP to compute Z_Re_N+1 (second step)  
    ZRe_step2 : mathDSP
      PORT MAP (
        CLK => clk_i,
        SEL => subNmult_c,
        A => zImag_s,
        B => zImag_s,
        C => zReal_subResOne_s(2*SIZE-1 downto 0),
        P => zReal_subResTwo_s
      );
    
    -- DSP to compute Z_Im_N+1
    ZIm : mathDSP
      PORT MAP (
        CLK => clk_i,
        SEL => multNadd_c,
        A => zImag_s,
        B => zReal_double_s,
        C => cImag_extend_s,
        P => zImag_subResOne_s
      );
    -- Double Z_Re with a left shift
    zReal_double_s <= (zReal_s(SIZE-2 downto 0) & "0");
    -- Extension of cImag_s with correct sign
    cImag_extend_s <= (zerosExtend_c & cImag_s & zerosCommaBits_c) when (cImag_s(SIZE-1) = '0')
                        else (onesExtend_c & cImag_s & zerosCommaBits_c);
    
    -- DSP to compute Z_Im_N+1 * Z_Im_N+1
    ZIm_times_ZIm : mathDSP
      PORT MAP (
        CLK => clk_i,
        SEL => multNadd_c,
        A => zImag_subResOne_s(((2*SIZE)-1)-(SIZE-COMMA) downto COMMA),
        B => zImag_subResOne_s(((2*SIZE)-1)-(SIZE-COMMA) downto COMMA),
        C => zero36bits_c,
        P => zImag_subResTwo_s
      );
      
    -- DSP to compute final stop of mandlebrot's algorithme
    ZIm2_plus_ZRe2 : mathDSP
      PORT MAP (
        CLK => clk_i,
        SEL => multNadd_c,
        A => zReal_subResTwo_s(((2*SIZE)-1)-(SIZE-COMMA) downto COMMA),
        B => zReal_subResTwo_s(((2*SIZE)-1)-(SIZE-COMMA) downto COMMA),
        C => zImag_subResTwo_s(2*SIZE-1 downto 0),
        P => finalResult_s
      );
    -- Isolate int part of final result
    finalIntResult_s <= finalResult_s(2*SIZE-1 downto 2*COMMA);

    -- décomposer le calcul en sous-calculs
    computeFSM_Process : process(clk_i,rst_i)
    begin
        if (rst_i = '1') then
            -- signals
            state <= idle;
            cnt_iter_s <= (others => '0');
            next_zReal_s <= (others => '0');
            next_zImag_s <= (others => '0');
            cReal_s <= (others => '0');
            cImag_s <= (others => '0');
            -- outputs
            ready_o <= '0';
            finished_o <= '0';
            z_real_o <= (others => '0');
            z_imaginary_o <= (others => '0');
            iterations_o  <= (others => '0');
            
        elsif (rising_edge(clk_i)) then
            -- default signals' values
            cnt_iter_s <= cnt_iter_s;
            next_zReal_s <= next_zReal_s;
            next_zImag_s <= next_zImag_s;
            cReal_s <= cReal_s;
            cImag_s <= cImag_s;
            -- default outputs' values
            finished_o <= '0';
            
            case state is
                when idle =>
                    -- next state
                    if (start_i = '1') then
                        state <= compute1;
                    else
                        state <= idle;
                    end if;
                    -- outputs
                    cnt_iter_s <= (others => '0');      -- reset interations' counter between each calculation
                    next_zReal_s <= (others => '0');    -- set inner variables to zero between each calculation
                    next_zImag_s <= (others => '0');    -- set inner variables to zero between each calculation
                    ready_o <= '1';                     -- ready for next calculation
                    cReal_s <= c_real_i;                -- sampling input
                    cImag_s <= c_imaginary_i;           -- sampling input
                
                when compute1 =>
                    -- next state
                    state <= compute2;
                    -- outputs
                    ready_o <= '0';                     -- computation has begun, not ready anymore
                    -- Acquiring new inner result Zim_N+1
                    next_zImag_s <= zImag_subResOne_s(((2*SIZE)-1)-(SIZE-COMMA) downto COMMA);
                    cnt_iter_s <= cnt_iter_s + 1;       -- new iterration in progress
                    
                
                when compute2 =>
                    -- next state
                    state <= compare;
                    -- outputs
                    -- Acquiring new inner result Zre_N+1
                    next_zReal_s <= zReal_subResTwo_s(((2*SIZE)-1)-(SIZE-COMMA) downto COMMA);
                
                when compute3 =>
                    -- next state
                    state <= compare;
                
                when compare =>
                    -- next state
                    if ((unsigned(finalIntResult_s) > sqRadius_c) OR (to_integer(cnt_iter_s) >= MAX_ITER)) then
                        state <= idle;      -- If one of the ending conditions has been reach, back to idle mode
                    else
                        state <= compute1;  -- else, new iterration
                    end if;
                    -- outputs
                    if ((unsigned(finalIntResult_s) > sqRadius_c) OR (to_integer(cnt_iter_s) >= MAX_ITER)) then
                        if (to_integer(cnt_iter_s) >= MAX_ITER) then
                            iterations_o <= (others => '0');--std_logic_vector(to_unsigned(2*MAX_ITER,SIZE));                -- when max iterrations has been reached, set output to zero
                        else
                            iterations_o <= std_logic_vector(cnt_iter_s);   -- else, sample number of iterrations
                        end if;
                        -- then update other outputs
                        z_real_o <= next_zReal_s;
                        z_imaginary_o <= next_zImag_s;
                        finished_o <= '1';                                      -- output result ready
                    end if;
    
                when others =>
                    -- In case of error, return at reset state
                    state <= idle;
                
            end case;
        
        end if;
    end process computeFSM_Process;
    
end Behavioral;

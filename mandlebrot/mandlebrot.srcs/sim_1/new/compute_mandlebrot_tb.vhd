----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2020 11:30:57 AM
-- Design Name: 
-- Module Name: compute_mandlebrot_tb - Behavioral
-- Project Name: 
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

entity compute_mandlebrot_tb is
--  Port ( );
end compute_mandlebrot_tb;

architecture Behavioral of compute_mandlebrot_tb is

    COMPONENT mandelbrot_calculator
        generic ( COMMA    : integer;  -- nombre de bits après la virgule
            MAX_ITER : integer;
            SIZE     : integer);
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
    END COMPONENT;
    
    constant comma_c : integer := 15;
    constant maxIter_c : integer := 100;
    constant size_c : integer := 18;
    
    constant clk_period : time := 10 ns;

    signal clk_sti : std_logic;
    signal rst_sti : std_logic := '0';
    signal start_sti : std_logic := '0';
    signal cReal_sti : std_logic_vector(size_c-1 downto 0) := (others => '0');
    signal cImag_sti : std_logic_vector(size_c-1 downto 0) := (others => '0');
    
    signal ready_obs : std_logic;
    signal finish_obs : std_logic;
    signal zReal_obs : std_logic_vector(size_c-1 downto 0);
    signal zImag_obs : std_logic_vector(size_c-1 downto 0);
    signal iter_obs : std_logic_vector(size_c-1 downto 0);

begin


        clk_process :process
        begin
            clk_sti <= '0';
            wait for clk_period/2;  --for 0.5 ns signal is '0'.
            clk_sti <= '1';
            wait for clk_period/2;  --for next 0.5 ns signal is '1'.
        end process;
        
        reset_process : process
        begin
            rst_sti <= '1';
            wait for 3*clk_period;
            rst_sti <= '0';
            wait;
       end process;
       
       stimuli_process : process
       begin
            wait for 4*clk_period;
            cReal_sti <= "11" & x"8000"; -- C_re = -1
            cImag_sti <= "00" & x"8000"; -- C_im = 1
            wait for clk_period;
            start_sti <= '1';
            wait for 2* clk_period;
            start_sti <= '0';
            wait until finish_obs = '1';
            report " -> New result, nb iter = " & integer'image(to_integer(unsigned(iter_obs))) &
                    " with Cre = " & integer'image(to_integer(unsigned(cReal_sti))) &
                    " & with Cim = " & integer'image(to_integer(unsigned(cImag_sti))) severity note;
            
            wait for 4*clk_period;
            cReal_sti <= "00" & x"1000"; -- C_re = 0.125
            cImag_sti <= "00" & x"6000"; -- C_im = 0.75
            wait for clk_period;
            start_sti <= '1';
            wait for 2* clk_period;
            start_sti <= '0';
            wait until finish_obs = '1';
            report " -> New result, nb iter = " & integer'image(to_integer(unsigned(iter_obs))) &
                    " with Cre = 0.125 & with Cim = 0.75" severity note;
                    
            wait for 4*clk_period;
            cReal_sti <= "00" & x"0000"; -- C_re = 0
            cImag_sti <= "00" & x"0000"; -- C_im = 0
            wait for clk_period;
            start_sti <= '1';
            wait for 2* clk_period;
            start_sti <= '0';
            wait until finish_obs = '1';
            report " -> New result, nb iter = " & integer'image(to_integer(unsigned(iter_obs))) &
                    " with Cre = " & integer'image(to_integer(unsigned(cReal_sti))) &
                    " & with Cim = " & integer'image(to_integer(unsigned(cImag_sti))) severity note;
            
            wait;
       end process;
        
    
        DUT : mandelbrot_calculator
        GENERIC MAP(
            COMMA => comma_c,
            MAX_ITER => maxIter_c,
            SIZE => size_c 
        )
        PORT MAP(
            clk_i => clk_sti,
            rst_i => rst_sti,
            ready_o => ready_obs,
            start_i => start_sti,
            finished_o => finish_obs,
            c_real_i => cReal_sti,
            c_imaginary_i => cImag_sti,
            z_real_o => zReal_obs,
            z_imaginary_o => zImag_obs,
            iterations_o => iter_obs
        );
        
    


end Behavioral;

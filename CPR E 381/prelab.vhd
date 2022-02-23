entity sys2 is
	port (
		input.w		: in std_logic;
		a.data		: in std_logic_vector(0 to 7);
		b.data		: in std_logic_vector(0 to 7);
		clk			: in std_logic;
		dat_4		: out std_logic_vector(7 downto 0);
		dat_5		: out std_logic_vector(2 downto 0));
end sys2;


entity	or_gate8 is
	port (A,B,C,D,E,F,G,H	: in std_logic;
		  o_F				: out std_logic);
end or_gate8;

architecture test_behav of or_gate8 is
	begin
		in8: process (A,B,C,D,E,F,G,H) is
			begin 
				o_F <= A or B or C or D or E or F or G or H;
		end process in8;
end test_behav;


entity d_flip_flop is
	port (d, s, r, clk	: in std_logic;
		  q, qnot		: out std_logic);
end d_flip_flop;


architecture test_behav of d_flip_flop is	
	begin	
		dF: process (clk, s, r)
			begin	
				if s = '0' then	
					q <= '1';
				else if r = '0' then
					q <= '0';
				else if clk = '1' then	
					q <= d;
					qnot <= not q;
				end if;
			end process dF;
end test_behav;



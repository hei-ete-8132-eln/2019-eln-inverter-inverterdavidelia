--
-- VHDL Architecture Inverter.sigmaDeltaLowpass.rtl
--
-- Created:
--          by - elia.scapini.UNKNOWN (WEA30907)
--          at - 15:24:08 09.01.2020
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE rtl OF sigmaDeltaLowpass IS

  constant accumulatorBitNb : positive := amplitude'length + shiftBitNb;
  constant inputAmplitude : signed(amplitude'range) := shift_left(
    resize("01", amplitude'length),
    amplitude'length-2
  );
  signal lowpassIn, lowpassOut: signed(amplitude'range);
  signal accumulator: signed(accumulatorBitNb-1 downto 0);

BEGIN
  ------------------------------------------------------------------------------
                                                                -- phase counter
  lowpassIn <= inputAmplitude when sigmaDelta = '1'
    else -inputAmplitude;

  integrator: process(reset, clock)
  begin
    if reset = '1' then
      accumulator <= (others => '0');
    elsif rising_edge(clock) then
      accumulator <= accumulator + lowpassIn - lowpassOut;
    end if;
  end process integrator;

  lowpassOut <= resize(
    shift_right(accumulator, shiftBitNb),
    lowpassOut'length
  );
  amplitude <= lowpassOut;


END ARCHITECTURE rtl;


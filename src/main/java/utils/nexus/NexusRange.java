package utils.nexus;

import org.apache.commons.lang.math.IntRange;

public class NexusRange{
	
	IntRange range;
	int steps;
	int positionVal;
	
	public NexusRange(IntRange range, int steps, int positionVal) {
		this.range = range;
		this.steps = steps; 
		this.positionVal = positionVal;
	}
	
	public NexusRange(int min, int max, int positionVal) {
		this(new IntRange(min,max), 1, positionVal); // default every one
	}
	
	public NexusRange(int min, int max, int steps, int positionVal) {
		this(new IntRange(min,max), steps, positionVal);
	}
	
	@Override
	public String toString() {
		return range.toString() + "\\" + steps;
	}

	public int getMinimumInt() {
		return range.getMinimumInteger();
	}
	
	public int getMaximumInt() {
		return range.getMaximumInteger();
	}

	public int getSteps() {
		return steps;
	}
	
	public int getPositionVal() {
		return positionVal;
	}
}

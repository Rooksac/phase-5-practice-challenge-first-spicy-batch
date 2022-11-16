# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

def first_spicy_batch(n)
  first = 1
  last = n
  lastMild = nil
  earliestSpicy = nil
  while (lastMild == nil) do
    mid = ((first+last)/2).floor
    if is_spicy_batch(mid) == false 
      if mid == earliestSpicy-1
        lastMild = mid
      end
      start = mid+1
     else 
      last = mid-1
      earliestSpicy = mid
    end
  end
  return lastMild + 1
end

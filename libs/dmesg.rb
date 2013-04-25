# Autogenerated from a Treetop grammar. Edits may be lost.


module Dmesg
  include Treetop::Runtime

  def root
    @root ||= :line
  end

  module Line0
    def timestamp
      elements[0]
    end

    def space
      elements[1]
    end

    def message
      elements[2]
    end
  end

  def _nt_line
    start_index = index
    if node_cache[:line].has_key?(index)
      cached = node_cache[:line][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1, s1 = index, []
      r2 = _nt_timestamp
      s1 << r2
      if r2
        r3 = _nt_space
        s1 << r3
        if r3
          r4 = _nt_message
          s1 << r4
        end
      end
      if s1.last
        r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
        r1.extend(Line0)
      else
        @index = i1
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:line][start_index] = r0

    r0
  end

  module Timestamp0
  end

  module Timestamp1
    def space
      elements[2]
    end

    def time
      elements[3]
    end

  end

  def _nt_timestamp
    start_index = index
    if node_cache[:timestamp].has_key?(index)
      cached = node_cache[:timestamp][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    s1, i1 = [], index
    loop do
      i2, s2 = index, []
      i3 = index
      if has_terminal?("[", false, index)
        r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("[")
        r4 = nil
      end
      if r4
        r3 = nil
      else
        @index = i3
        r3 = instantiate_node(SyntaxNode,input, index...index)
      end
      s2 << r3
      if r3
        if index < input_length
          r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("any character")
          r5 = nil
        end
        s2 << r5
      end
      if s2.last
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
        r2.extend(Timestamp0)
      else
        @index = i2
        r2 = nil
      end
      if r2
        s1 << r2
      else
        break
      end
    end
    r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
    s0 << r1
    if r1
      if has_terminal?('[', false, index)
        r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('[')
        r6 = nil
      end
      s0 << r6
      if r6
        r7 = _nt_space
        s0 << r7
        if r7
          r8 = _nt_time
          s0 << r8
          if r8
            if has_terminal?(']', false, index)
              r9 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure(']')
              r9 = nil
            end
            s0 << r9
          end
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Timestamp1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:timestamp][start_index] = r0

    r0
  end

  module Time0
    def second
      elements[0]
    end

    def usecond
      elements[2]
    end
  end

  def _nt_time
    start_index = index
    if node_cache[:time].has_key?(index)
      cached = node_cache[:time][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_number
    s0 << r1
    if r1
      if has_terminal?(".", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(".")
        r2 = nil
      end
      s0 << r2
      if r2
        r3 = _nt_number
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Time0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:time][start_index] = r0

    r0
  end

  module Message0
  end

  def _nt_message
    start_index = index
    if node_cache[:message].has_key?(index)
      cached = node_cache[:message][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1, s1 = index, []
      i2 = index
      if has_terminal?("\n", false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("\n")
        r3 = nil
      end
      if r3
        r2 = nil
      else
        @index = i2
        r2 = instantiate_node(SyntaxNode,input, index...index)
      end
      s1 << r2
      if r2
        if index < input_length
          r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("any character")
          r4 = nil
        end
        s1 << r4
      end
      if s1.last
        r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
        r1.extend(Message0)
      else
        @index = i1
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:message][start_index] = r0

    r0
  end

  module Space0
  end

  def _nt_space
    start_index = index
    if node_cache[:space].has_key?(index)
      cached = node_cache[:space][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      if has_terminal?("\\\n", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
        @index += 2
      else
        terminal_parse_failure("\\\n")
        r2 = nil
      end
      if r2
        r1 = r2
      else
        if has_terminal?('\G[ \\t]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          r1 = r3
        else
          if has_terminal?('\G[ \\s]', true, index)
            r4 = true
            @index += 1
          else
            r4 = nil
          end
          if r4
            r1 = r4
          else
            @index = i1
            r1 = nil
          end
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(Space0)

    node_cache[:space][start_index] = r0

    r0
  end

  module White0
  end

  def _nt_white
    start_index = index
    if node_cache[:white].has_key?(index)
      cached = node_cache[:white][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[ \\t\\n\\r\\f]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(White0)

    node_cache[:white][start_index] = r0

    r0
  end

  module Word0
  end

  def _nt_word
    start_index = index
    if node_cache[:word].has_key?(index)
      cached = node_cache[:word][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[a-zA-Z_.,/0-9"\'#@\\-\\*:~\\+\\!]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Word0)
    end

    node_cache[:word][start_index] = r0

    r0
  end

  module Number0
  end

  def _nt_number
    start_index = index
    if node_cache[:number].has_key?(index)
      cached = node_cache[:number][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[0-9]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Number0)
    end

    node_cache[:number][start_index] = r0

    r0
  end

end

class DmesgParser < Treetop::Runtime::CompiledParser
  include Dmesg
end

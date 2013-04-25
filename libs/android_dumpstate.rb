# Autogenerated from a Treetop grammar. Edits may be lost.


module AndroidDumpState
  include Treetop::Runtime

  def root
    @root ||= :document
  end

  module Document0
    def value
      elements.map{ |e| e.value }
    end
    def each
      elements.each {|e| yield e}
    end
  end

  def _nt_document
    start_index = index
    if node_cache[:document].has_key?(index)
      cached = node_cache[:document][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_segment
      if r2
        r1 = r2
      else
        r3 = _nt_empty_line
        if r3
          r1 = r3
        else
          @index = i1
          r1 = nil
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(Document0)

    node_cache[:document][start_index] = r0

    r0
  end

  module Segment0
    def header
      elements[0]
    end

    def text
      elements[1]
    end
  end

  module Segment1
    def value
        elements.map{|e| e.value}
    end
  end

  def _nt_segment
    start_index = index
    if node_cache[:segment].has_key?(index)
      cached = node_cache[:segment][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_header
    s0 << r1
    if r1
      r2 = _nt_text
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Segment0)
      r0.extend(Segment1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:segment][start_index] = r0

    r0
  end

  module Header0
  end

  module Header1
  end

  module Header2
    def value
      {:header => elements[1].text_value}
    end
  end

  def _nt_header
    start_index = index
    if node_cache[:header].has_key?(index)
      cached = node_cache[:header][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("------", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 6))
      @index += 6
    else
      terminal_parse_failure("------")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        i3, s3 = index, []
        i4 = index
        if has_terminal?('------', false, index)
          r5 = instantiate_node(SyntaxNode,input, index...(index + 6))
          @index += 6
        else
          terminal_parse_failure('------')
          r5 = nil
        end
        if r5
          r4 = nil
        else
          @index = i4
          r4 = instantiate_node(SyntaxNode,input, index...index)
        end
        s3 << r4
        if r4
          if index < input_length
            r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("any character")
            r6 = nil
          end
          s3 << r6
        end
        if s3.last
          r3 = instantiate_node(SyntaxNode,input, i3...index, s3)
          r3.extend(Header0)
        else
          @index = i3
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
      if r2
        if has_terminal?("------", false, index)
          r7 = instantiate_node(SyntaxNode,input, index...(index + 6))
          @index += 6
        else
          terminal_parse_failure("------")
          r7 = nil
        end
        s0 << r7
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Header1)
      r0.extend(Header2)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:header][start_index] = r0

    r0
  end

  module Text0
  end

  module Text1
    def value
      {:text => text_value}
    end
  end

  def _nt_text
    start_index = index
    if node_cache[:text].has_key?(index)
      cached = node_cache[:text][index]
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
      r3 = _nt_header
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
        r1.extend(Text0)
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
    r0.extend(Text1)

    node_cache[:text][start_index] = r0

    r0
  end

  module EmptyLine0
    def value
      []
    end
  end

  def _nt_empty_line
    start_index = index
    if node_cache[:empty_line].has_key?(index)
      cached = node_cache[:empty_line][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('\G[\\n]', true, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
      r0.extend(EmptyLine0)
      @index += 1
    else
      r0 = nil
    end

    node_cache[:empty_line][start_index] = r0

    r0
  end

end

class AndroidDumpStateParser < Treetop::Runtime::CompiledParser
  include AndroidDumpState
end

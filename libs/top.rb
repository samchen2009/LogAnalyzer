# Autogenerated from a Treetop grammar. Edits may be lost.


module Top
  include Treetop::Runtime

  def root
    @root ||= :line
  end

  module Line0
  end

  module Line1
    def number
      elements[0]
    end

  end

  module Line2
    def number
      elements[0]
    end

  end

  module Line3
    def number
      elements[0]
    end

  end

  module Line4
  end

  module Line5
    def pid
      elements[1]
    end

    def space1
      elements[2]
    end

    def tid
      elements[3]
    end

    def space2
      elements[4]
    end

    def pr
      elements[5]
    end

    def space3
      elements[6]
    end

    def cpu
      elements[7]
    end

    def space4
      elements[8]
    end

    def s
      elements[9]
    end

    def space5
      elements[10]
    end

    def vss
      elements[11]
    end

    def space6
      elements[12]
    end

    def rss
      elements[13]
    end

    def space7
      elements[14]
    end

    def pcy
      elements[15]
    end

    def space8
      elements[16]
    end

    def uid
      elements[17]
    end

    def space9
      elements[18]
    end

    def thread
      elements[19]
    end

    def space10
      elements[20]
    end

    def proc
      elements[21]
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
      s2, i2 = [], index
      loop do
        i3, s3 = index, []
        i4 = index
        r5 = _nt_number
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
          r3.extend(Line0)
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
      s1 << r2
      if r2
        r7 = _nt_number
        s1 << r7
        if r7
          r8 = _nt_space
          s1 << r8
          if r8
            r9 = _nt_number
            s1 << r9
            if r9
              r10 = _nt_space
              s1 << r10
              if r10
                r11 = _nt_number
                s1 << r11
                if r11
                  r12 = _nt_space
                  s1 << r12
                  if r12
                    i13, s13 = index, []
                    r14 = _nt_number
                    s13 << r14
                    if r14
                      if has_terminal?("%", false, index)
                        r15 = instantiate_node(SyntaxNode,input, index...(index + 1))
                        @index += 1
                      else
                        terminal_parse_failure("%")
                        r15 = nil
                      end
                      s13 << r15
                    end
                    if s13.last
                      r13 = instantiate_node(SyntaxNode,input, i13...index, s13)
                      r13.extend(Line1)
                    else
                      @index = i13
                      r13 = nil
                    end
                    s1 << r13
                    if r13
                      r16 = _nt_space
                      s1 << r16
                      if r16
                        i17 = index
                        if has_terminal?("R", false, index)
                          r18 = instantiate_node(SyntaxNode,input, index...(index + 1))
                          @index += 1
                        else
                          terminal_parse_failure("R")
                          r18 = nil
                        end
                        if r18
                          r17 = r18
                        else
                          if has_terminal?("D", false, index)
                            r19 = instantiate_node(SyntaxNode,input, index...(index + 1))
                            @index += 1
                          else
                            terminal_parse_failure("D")
                            r19 = nil
                          end
                          if r19
                            r17 = r19
                          else
                            if has_terminal?("S", false, index)
                              r20 = instantiate_node(SyntaxNode,input, index...(index + 1))
                              @index += 1
                            else
                              terminal_parse_failure("S")
                              r20 = nil
                            end
                            if r20
                              r17 = r20
                            else
                              @index = i17
                              r17 = nil
                            end
                          end
                        end
                        s1 << r17
                        if r17
                          r21 = _nt_space
                          s1 << r21
                          if r21
                            i22, s22 = index, []
                            r23 = _nt_number
                            s22 << r23
                            if r23
                              if has_terminal?("K", false, index)
                                r24 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                @index += 1
                              else
                                terminal_parse_failure("K")
                                r24 = nil
                              end
                              s22 << r24
                            end
                            if s22.last
                              r22 = instantiate_node(SyntaxNode,input, i22...index, s22)
                              r22.extend(Line2)
                            else
                              @index = i22
                              r22 = nil
                            end
                            s1 << r22
                            if r22
                              r25 = _nt_space
                              s1 << r25
                              if r25
                                i26, s26 = index, []
                                r27 = _nt_number
                                s26 << r27
                                if r27
                                  if has_terminal?("K", false, index)
                                    r28 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                    @index += 1
                                  else
                                    terminal_parse_failure("K")
                                    r28 = nil
                                  end
                                  s26 << r28
                                end
                                if s26.last
                                  r26 = instantiate_node(SyntaxNode,input, i26...index, s26)
                                  r26.extend(Line3)
                                else
                                  @index = i26
                                  r26 = nil
                                end
                                s1 << r26
                                if r26
                                  r29 = _nt_space
                                  s1 << r29
                                  if r29
                                    i30 = index
                                    if has_terminal?("fg", false, index)
                                      r31 = instantiate_node(SyntaxNode,input, index...(index + 2))
                                      @index += 2
                                    else
                                      terminal_parse_failure("fg")
                                      r31 = nil
                                    end
                                    if r31
                                      r30 = r31
                                    else
                                      if has_terminal?("bg", false, index)
                                        r32 = instantiate_node(SyntaxNode,input, index...(index + 2))
                                        @index += 2
                                      else
                                        terminal_parse_failure("bg")
                                        r32 = nil
                                      end
                                      if r32
                                        r30 = r32
                                      else
                                        @index = i30
                                        r30 = nil
                                      end
                                    end
                                    s1 << r30
                                    if r30
                                      r33 = _nt_space
                                      s1 << r33
                                      if r33
                                        r34 = _nt_word
                                        s1 << r34
                                        if r34
                                          r35 = _nt_space
                                          s1 << r35
                                          if r35
                                            r36 = _nt_word
                                            s1 << r36
                                            if r36
                                              r37 = _nt_space
                                              s1 << r37
                                              if r37
                                                s38, i38 = [], index
                                                loop do
                                                  i39, s39 = index, []
                                                  i40 = index
                                                  if has_terminal?("\n", false, index)
                                                    r41 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                                    @index += 1
                                                  else
                                                    terminal_parse_failure("\n")
                                                    r41 = nil
                                                  end
                                                  if r41
                                                    r40 = nil
                                                  else
                                                    @index = i40
                                                    r40 = instantiate_node(SyntaxNode,input, index...index)
                                                  end
                                                  s39 << r40
                                                  if r40
                                                    if index < input_length
                                                      r42 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                                      @index += 1
                                                    else
                                                      terminal_parse_failure("any character")
                                                      r42 = nil
                                                    end
                                                    s39 << r42
                                                  end
                                                  if s39.last
                                                    r39 = instantiate_node(SyntaxNode,input, i39...index, s39)
                                                    r39.extend(Line4)
                                                  else
                                                    @index = i39
                                                    r39 = nil
                                                  end
                                                  if r39
                                                    s38 << r39
                                                  else
                                                    break
                                                  end
                                                end
                                                r38 = instantiate_node(SyntaxNode,input, i38...index, s38)
                                                s1 << r38
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      if s1.last
        r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
        r1.extend(Line5)
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

class TopParser < Treetop::Runtime::CompiledParser
  include Top
end


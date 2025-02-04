module GeneratorRefinements
  refine Integer do
    def to_nix()
      if self < 0 then
        "(-"+self.abs.to_nix()+")"
      else
        to_json()
      end
    end
  end

  refine Array do
    def to_nix()
      "[ " + map(&:to_nix).join(" ") + " ]"
    end
  end

  refine String do
    def indent(n, char = " ")
      gsub(/^/, char * n)
    end

    def to_nix()
      to_json() # close enough
    end
  end
end

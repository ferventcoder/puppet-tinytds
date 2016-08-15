require 'puppet/type'

Puppet::Type.newtype(:tds) do

  newparam(:name) do
    desc "The name of the tds resource. Used for uniqueness. Will set
      the target to this value if target is unset."

    validate do |value|
      if value.nil? or value.empty?
        raise ArgumentError, "A non-empty name must be specified."
      end
    end

    isnamevar
  end


  newparam(:type_value) do
    desc "The value of the resource. Defaults to `hello`."
    newvalues(:hello)
    defaultto(:hello)
  end


end

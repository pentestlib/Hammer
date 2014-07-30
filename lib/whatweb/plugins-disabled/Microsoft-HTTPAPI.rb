##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Microsoft-HTTPAPI" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-13
version "0.1"
description "The HTTP Server API enables applications to communicate over HTTP without using Microsoft Internet Information Server (IIS). Applications can register to receive HTTP requests for particular URLs, receive HTTP requests, and send HTTP responses. The HTTP Server API includes SSL support so that applications can exchange data over secure HTTP connections without IIS. It is also designed to work with I/O completion ports. - Homepage: http://msdn.microsoft.com/en-us/library/aa364510%28v=vs.85%29.aspx"

# ShodanHQ results as at 2011-03-13 #
# 148,635 for Microsoft-HTTPAPI



# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@headers["server"].scan(/Microsoft-HTTPAPI\/(.+)$/) } if @headers["server"] =~ /Microsoft-HTTPAPI\/(.+)$/

	# Return passive matches
	m

end

end


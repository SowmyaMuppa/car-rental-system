<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Car Update Page</title>
</head>
<body>
    
    <div align ="center">
        <h1>Car Update Page</h1>
        <form:form action="/carUpdate" method="post" modelAttribute="carRecord">
        <form:hidden path="carNumber"/>
         <form:hidden path="available" />
        <form:hidden path="carName"/>
        <form:hidden path="carColor"/>
        <form:hidden path="manufacturer"/>
        <form:hidden path="variantId"/>
        <form:hidden path="yearOfMfg"/>
          Car Registration Number:<form:input path="carNumber" disabled="true" />
			<br/><br/>
            Car Name:<form:input path="carName" disabled="true" />
			<br/><br/>
           Car Color:<form:input path="carColor" disabled="true" />
			<br/><br/>
            Manufacturer Name:<form:input path="manufacturer" disabled="true"/>
			<br/><br/>
			VariantId:<form:input path="variantId" disabled="true"/>
			<br/><br/>
           Year of Manufacture:<form:input path="yearOfMfg" disabled="true"/>
			<br/><br/>
          Enter New Rent Rate per Hour:<form:input path="rentRate" />
			<br/><br/>
           Enter New Availability Status:<form:input path="available"/>
			<br/><br/>
			 <div class="variantIdContainer">
                <label class="label" for="variantId">Variant Id:</label>
                <form:input path="variantId" id="variantId" class="input" placeholder="Variant Id" disabled="true"/>
            </div>
            <div class="button-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>

SELECT  ESTIMATE_SHEET_ID
		,ESTIMATE_DATE
        ,DELIVERY_INFO
        ,VALID_DATE
        ,USER_ID
        ,USER_NAME
        ,REMARKS
        ,TITLE
        ,DELIVERY_NAME
        ,DELIVERY_ZIP_CODE
        ,ESTIMATE_CONDITION
        ,SUBMIT_NAME
        ,SUBMIT_PRE_CATEGORY
        ,SUBMIT_PRE
        ,CUSTOMER_CODE
        ,CUSTOMER_NAME
        ,CUSTOMER_REMARKS
        ,CUSTOMER_COMMENT_DATA
        ,CTAX_PRICE_TOTAL
        ,CTAX_RATE
        ,COST_TOTAL
        ,RETAIL_PRICE_TOTAL
        ,ESTIMATE_TOTAL
        ,MEMO
        ,UPD_FUNC
        ,UPD_DATETM
        ,UPD_USER
        ,TAX_FRACT_CATEGORY
        ,PRICE_FRACT_CATEGORY
    FROM ESTIMATE_SHEET_TRN_/*$domainId*/
	WHERE
		ESTIMATE_SHEET_ID=/*estimateSheetId*/'default'

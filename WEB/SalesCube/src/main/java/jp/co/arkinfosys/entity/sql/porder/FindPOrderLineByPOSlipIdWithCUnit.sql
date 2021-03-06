SELECT
PL.LINE_NO				AS LINE_NO
,PL.PRODUCT_CODE			AS PRODUCT_CODE
,PL.SUPPLIER_PCODE			AS SUPPLIER_PCODE
,PL.PRODUCT_ABSTRACT		AS PRODUCT_ABSTRACT
,PL.QUANTITY				AS QUANTITY

,CASE WHEN PS.RATE_ID IS NULL THEN PL.UNIT_PRICE
 ELSE PL.DOL_UNIT_PRICE END 		AS DOL_UNIT_PRICE

,CASE WHEN PS.RATE_ID IS NULL THEN PL.PRICE
 ELSE PL.DOL_PRICE END 				AS DOL_PRICE

,PL.DELIVERY_DATE AS DELIVERY_DATE
,PL.REMARKS AS REMARKS
,PL.PRODUCT_REMARKS AS PRODUCT_REMARKS

FROM
		PO_LINE_TRN_/*$domainId*/ PL
		LEFT OUTER JOIN PO_SLIP_TRN_/*$domainId*/ PS
			ON PS.PO_SLIP_ID = PL.PO_SLIP_ID

	WHERE
		PL.PO_SLIP_ID=/*poSlipId*/
	ORDER BY
		PL.LINE_NO ASC

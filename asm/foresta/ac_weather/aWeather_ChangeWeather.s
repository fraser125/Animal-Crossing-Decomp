lbl_8060278C:
/* 8060278C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80602790  7C 08 02 A6 */	mflr r0
/* 80602794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80602798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060279C  7C 9F 23 78 */	mr r31, r4
/* 806027A0  93 C1 00 08 */	stw r30, 8(r1)
/* 806027A4  7C 7E 1B 78 */	mr r30, r3
/* 806027A8  88 03 01 9C */	lbz r0, 0x19c(r3)
/* 806027AC  28 00 00 01 */	cmplwi r0, 1
/* 806027B0  40 82 00 BC */	bne lbl_8060286C
/* 806027B4  A8 1E 01 7E */	lha r0, 0x17e(r30)
/* 806027B8  2C 00 00 00 */	cmpwi r0, 0
/* 806027BC  40 82 00 B0 */	bne lbl_8060286C
/* 806027C0  4B DA 25 0D */	bl mFI_GetFieldId
/* 806027C4  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 806027C8  41 82 00 48 */	beq lbl_80602810
/* 806027CC  A8 1E 01 7A */	lha r0, 0x17a(r30)
/* 806027D0  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 806027D4  A8 7E 01 78 */	lha r3, 0x178(r30)
/* 806027D8  A8 9E 01 82 */	lha r4, 0x182(r30)
/* 806027DC  4B FF F1 49 */	bl aWeather_weatherinfo_CommonSet
/* 806027E0  38 00 00 01 */	li r0, 1
/* 806027E4  7F C3 F3 78 */	mr r3, r30
/* 806027E8  B0 1E 01 7E */	sth r0, 0x17e(r30)
/* 806027EC  7F E4 FB 78 */	mr r4, r31
/* 806027F0  A8 1E 01 82 */	lha r0, 0x182(r30)
/* 806027F4  B0 1E 01 80 */	sth r0, 0x180(r30)
/* 806027F8  A8 BE 01 78 */	lha r5, 0x178(r30)
/* 806027FC  A8 DE 01 7E */	lha r6, 0x17e(r30)
/* 80602800  4B FF F5 A5 */	bl aWeather_ChangeEnvSE
/* 80602804  38 00 00 00 */	li r0, 0
/* 80602808  98 1E 01 9C */	stb r0, 0x19c(r30)
/* 8060280C  48 00 00 60 */	b lbl_8060286C
lbl_80602810:
/* 80602810  7F C3 F3 78 */	mr r3, r30
/* 80602814  4B FF FF 4D */	bl aWeather_CountWeatherPrivate
/* 80602818  2C 03 00 00 */	cmpwi r3, 0
/* 8060281C  40 82 00 50 */	bne lbl_8060286C
/* 80602820  A8 1E 01 7A */	lha r0, 0x17a(r30)
/* 80602824  7F C3 F3 78 */	mr r3, r30
/* 80602828  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 8060282C  A8 9E 01 78 */	lha r4, 0x178(r30)
/* 80602830  4B FF F7 FD */	bl aWeather_SetNowProfile
/* 80602834  A8 7E 01 78 */	lha r3, 0x178(r30)
/* 80602838  A8 9E 01 82 */	lha r4, 0x182(r30)
/* 8060283C  4B FF F0 E9 */	bl aWeather_weatherinfo_CommonSet
/* 80602840  38 00 00 01 */	li r0, 1
/* 80602844  7F C3 F3 78 */	mr r3, r30
/* 80602848  B0 1E 01 7E */	sth r0, 0x17e(r30)
/* 8060284C  7F E4 FB 78 */	mr r4, r31
/* 80602850  A8 1E 01 82 */	lha r0, 0x182(r30)
/* 80602854  B0 1E 01 80 */	sth r0, 0x180(r30)
/* 80602858  A8 BE 01 78 */	lha r5, 0x178(r30)
/* 8060285C  A8 DE 01 7E */	lha r6, 0x17e(r30)
/* 80602860  4B FF F5 45 */	bl aWeather_ChangeEnvSE
/* 80602864  38 00 00 00 */	li r0, 0
/* 80602868  98 1E 01 9C */	stb r0, 0x19c(r30)
lbl_8060286C:
/* 8060286C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80602870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80602874  83 C1 00 08 */	lwz r30, 8(r1)
/* 80602878  7C 08 03 A6 */	mtlr r0
/* 8060287C  38 21 00 10 */	addi r1, r1, 0x10
/* 80602880  4E 80 00 20 */	blr 

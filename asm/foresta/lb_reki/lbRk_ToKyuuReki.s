lbl_80407770:
/* 80407770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80407774  7C 08 02 A6 */	mflr r0
/* 80407778  3C A0 80 64 */	lis r5, data_806436B4@ha /* 0x806436B4@ha */
/* 8040777C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80407780  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80407784  7C 9F 23 78 */	mr r31, r4
/* 80407788  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8040778C  7C 7E 1B 78 */	mr r30, r3
/* 80407790  80 05 36 B4 */	lwz r0, data_806436B4@l(r5)  /* 0x806436B4@l */
/* 80407794  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80407798:
/* 80407798  38 61 00 08 */	addi r3, r1, 8
/* 8040779C  38 81 00 0C */	addi r4, r1, 0xc
/* 804077A0  4B FF FE B9 */	bl lbRk_ToSeiyouReki
/* 804077A4  2C 03 00 00 */	cmpwi r3, 0
/* 804077A8  40 82 00 0C */	bne lbl_804077B4
/* 804077AC  38 60 00 00 */	li r3, 0
/* 804077B0  48 00 01 00 */	b lbl_804078B0
lbl_804077B4:
/* 804077B4  88 61 00 0B */	lbz r3, 0xb(r1)
/* 804077B8  88 1F 00 03 */	lbz r0, 3(r31)
/* 804077BC  7C 03 00 40 */	cmplw r3, r0
/* 804077C0  40 82 00 44 */	bne lbl_80407804
/* 804077C4  88 61 00 0A */	lbz r3, 0xa(r1)
/* 804077C8  88 1F 00 02 */	lbz r0, 2(r31)
/* 804077CC  7C 03 00 40 */	cmplw r3, r0
/* 804077D0  40 82 00 34 */	bne lbl_80407804
/* 804077D4  A0 61 00 08 */	lhz r3, 8(r1)
/* 804077D8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804077DC  7C 03 00 40 */	cmplw r3, r0
/* 804077E0  40 82 00 24 */	bne lbl_80407804
/* 804077E4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 804077E8  38 60 00 01 */	li r3, 1
/* 804077EC  98 1E 00 03 */	stb r0, 3(r30)
/* 804077F0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 804077F4  98 1E 00 02 */	stb r0, 2(r30)
/* 804077F8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 804077FC  B0 1E 00 00 */	sth r0, 0(r30)
/* 80407800  48 00 00 B0 */	b lbl_804078B0
lbl_80407804:
/* 80407804  88 81 00 0F */	lbz r4, 0xf(r1)
/* 80407808  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8040780C  38 04 00 01 */	addi r0, r4, 1
/* 80407810  88 81 00 0E */	lbz r4, 0xe(r1)
/* 80407814  98 01 00 0F */	stb r0, 0xf(r1)
/* 80407818  4B FF FD 29 */	bl lbRk_KyuurekiDays
/* 8040781C  88 01 00 0F */	lbz r0, 0xf(r1)
/* 80407820  7C 03 00 00 */	cmpw r3, r0
/* 80407824  40 80 FF 74 */	bge lbl_80407798
/* 80407828  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8040782C  38 00 00 01 */	li r0, 1
/* 80407830  98 01 00 0F */	stb r0, 0xf(r1)
/* 80407834  38 03 00 01 */	addi r0, r3, 1
/* 80407838  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8040783C  98 01 00 0E */	stb r0, 0xe(r1)
/* 80407840  4B FF FC 79 */	bl lbRk_IsKyuurekiLeapYear
/* 80407844  2C 03 00 00 */	cmpwi r3, 0
/* 80407848  40 82 00 38 */	bne lbl_80407880
/* 8040784C  88 01 00 0E */	lbz r0, 0xe(r1)
/* 80407850  28 00 00 0C */	cmplwi r0, 0xc
/* 80407854  40 81 FF 44 */	ble lbl_80407798
/* 80407858  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8040785C  38 00 00 01 */	li r0, 1
/* 80407860  98 01 00 0E */	stb r0, 0xe(r1)
/* 80407864  38 63 00 01 */	addi r3, r3, 1
/* 80407868  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8040786C  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80407870  28 00 07 F0 */	cmplwi r0, 0x7f0
/* 80407874  40 81 FF 24 */	ble lbl_80407798
/* 80407878  38 60 00 00 */	li r3, 0
/* 8040787C  48 00 00 34 */	b lbl_804078B0
lbl_80407880:
/* 80407880  88 01 00 0E */	lbz r0, 0xe(r1)
/* 80407884  28 00 00 0D */	cmplwi r0, 0xd
/* 80407888  40 81 FF 10 */	ble lbl_80407798
/* 8040788C  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 80407890  38 00 00 01 */	li r0, 1
/* 80407894  98 01 00 0E */	stb r0, 0xe(r1)
/* 80407898  38 63 00 01 */	addi r3, r3, 1
/* 8040789C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804078A0  B0 61 00 0C */	sth r3, 0xc(r1)
/* 804078A4  28 00 07 F0 */	cmplwi r0, 0x7f0
/* 804078A8  40 81 FE F0 */	ble lbl_80407798
/* 804078AC  38 60 00 00 */	li r3, 0
lbl_804078B0:
/* 804078B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804078B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804078B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804078BC  7C 08 03 A6 */	mtlr r0
/* 804078C0  38 21 00 20 */	addi r1, r1, 0x20
/* 804078C4  4E 80 00 20 */	blr 

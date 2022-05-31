lbl_805FF46C:
/* 805FF46C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FF470  7C 08 02 A6 */	mflr r0
/* 805FF474  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FF478  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805FF47C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805FF480  7C 9E 23 78 */	mr r30, r4
/* 805FF484  38 80 00 04 */	li r4, 4
/* 805FF488  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FF48C  7F C3 F3 78 */	mr r3, r30
/* 805FF490  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805FF494  83 E5 09 A0 */	lwz r31, 0x9a0(r5)
/* 805FF498  7D 89 03 A6 */	mtctr r12
/* 805FF49C  4E 80 04 21 */	bctrl 
/* 805FF4A0  7F E4 FB 78 */	mr r4, r31
/* 805FF4A4  38 61 00 08 */	addi r3, r1, 8
/* 805FF4A8  4B FF FE 35 */	bl func_805FF2DC
/* 805FF4AC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FF4B0  2C 00 00 01 */	cmpwi r0, 1
/* 805FF4B4  40 82 00 24 */	bne lbl_805FF4D8
/* 805FF4B8  38 61 00 08 */	addi r3, r1, 8
/* 805FF4BC  4B E0 71 C1 */	bl lbRTC_SetTime
/* 805FF4C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FF4C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FF4C8  3C 63 00 02 */	addis r3, r3, 2
/* 805FF4CC  38 63 61 20 */	addi r3, r3, 0x6120
/* 805FF4D0  4B E0 72 4D */	bl lbRTC_GetTime
/* 805FF4D4  48 00 00 9C */	b lbl_805FF570
lbl_805FF4D8:
/* 805FF4D8  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 805FF4DC  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 805FF4E0  7C 03 00 40 */	cmplw r3, r0
/* 805FF4E4  40 82 00 44 */	bne lbl_805FF528
/* 805FF4E8  88 61 00 0D */	lbz r3, 0xd(r1)
/* 805FF4EC  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 805FF4F0  7C 03 00 40 */	cmplw r3, r0
/* 805FF4F4  40 82 00 34 */	bne lbl_805FF528
/* 805FF4F8  88 61 00 0B */	lbz r3, 0xb(r1)
/* 805FF4FC  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 805FF500  7C 03 00 40 */	cmplw r3, r0
/* 805FF504  40 82 00 24 */	bne lbl_805FF528
/* 805FF508  88 61 00 0A */	lbz r3, 0xa(r1)
/* 805FF50C  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 805FF510  7C 03 00 40 */	cmplw r3, r0
/* 805FF514  40 82 00 14 */	bne lbl_805FF528
/* 805FF518  88 61 00 09 */	lbz r3, 9(r1)
/* 805FF51C  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 805FF520  7C 03 00 40 */	cmplw r3, r0
/* 805FF524  41 82 00 18 */	beq lbl_805FF53C
lbl_805FF528:
/* 805FF528  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FF52C  38 00 00 01 */	li r0, 1
/* 805FF530  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FF534  3C 63 00 02 */	addis r3, r3, 2
/* 805FF538  98 03 13 76 */	stb r0, 0x1376(r3)
lbl_805FF53C:
/* 805FF53C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FF540  38 00 00 01 */	li r0, 1
/* 805FF544  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FF548  38 81 00 08 */	addi r4, r1, 8
/* 805FF54C  3C 63 00 03 */	addis r3, r3, 3
/* 805FF550  98 03 88 3B */	stb r0, -0x77c5(r3)
/* 805FF554  38 63 88 84 */	addi r3, r3, -30588
/* 805FF558  4B E0 7C DD */	bl lbRTC_TimeCopy
/* 805FF55C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FF560  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FF564  3C 63 00 03 */	addis r3, r3, 3
/* 805FF568  38 63 88 8C */	addi r3, r3, -30580
/* 805FF56C  4B E0 71 B1 */	bl lbRTC_GetTime
lbl_805FF570:
/* 805FF570  38 60 00 02 */	li r3, 2
/* 805FF574  48 02 E7 91 */	bl sAdo_SysTrgStart
/* 805FF578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FF57C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805FF580  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805FF584  7C 08 03 A6 */	mtlr r0
/* 805FF588  38 21 00 20 */	addi r1, r1, 0x20
/* 805FF58C  4E 80 00 20 */	blr 

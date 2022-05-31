lbl_8058C9E8:
/* 8058C9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C9EC  7C 08 02 A6 */	mflr r0
/* 8058C9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C9F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C9F8  4B B0 E4 DD */	bl func_8009AED4
/* 8058C9FC  7C 7E 1B 78 */	mr r30, r3
/* 8058CA00  7C 9D 23 78 */	mr r29, r4
/* 8058CA04  38 60 00 0F */	li r3, 0xf
/* 8058CA08  38 80 00 08 */	li r4, 8
/* 8058CA0C  4B E1 13 C1 */	bl mEv_get_save_area
/* 8058CA10  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8058CA14  7C 7F 1B 78 */	mr r31, r3
/* 8058CA18  A0 C3 00 02 */	lhz r6, 2(r3)
/* 8058CA1C  38 A0 00 80 */	li r5, 0x80
/* 8058CA20  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8058CA24  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058CA28  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058CA2C  7C A0 00 30 */	slw r0, r5, r0
/* 8058CA30  7C C0 00 39 */	and. r0, r6, r0
/* 8058CA34  41 82 00 6C */	beq lbl_8058CAA0
/* 8058CA38  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 8058CA3C  40 82 00 64 */	bne lbl_8058CAA0
/* 8058CA40  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058CA44  7F C3 F3 78 */	mr r3, r30
/* 8058CA48  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058CA4C  3C 84 00 02 */	addis r4, r4, 2
/* 8058CA50  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058CA54  81 84 00 00 */	lwz r12, 0(r4)
/* 8058CA58  7D 89 03 A6 */	mtctr r12
/* 8058CA5C  4E 80 04 21 */	bctrl 
/* 8058CA60  7F C3 F3 78 */	mr r3, r30
/* 8058CA64  7F A4 EB 78 */	mr r4, r29
/* 8058CA68  38 A0 00 0B */	li r5, 0xb
/* 8058CA6C  48 00 0A B1 */	bl aTKN1_setup_think_proc
/* 8058CA70  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8058CA74  38 80 00 80 */	li r4, 0x80
/* 8058CA78  A0 BF 00 02 */	lhz r5, 2(r31)
/* 8058CA7C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058CA80  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058CA84  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058CA88  7C 80 00 30 */	slw r0, r4, r0
/* 8058CA8C  7C A0 00 78 */	andc r0, r5, r0
/* 8058CA90  B0 1F 00 02 */	sth r0, 2(r31)
/* 8058CA94  88 1E 09 AD */	lbz r0, 0x9ad(r30)
/* 8058CA98  60 00 00 01 */	ori r0, r0, 1
/* 8058CA9C  98 1E 09 AD */	stb r0, 0x9ad(r30)
lbl_8058CAA0:
/* 8058CAA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058CAA4  4B B0 E4 7D */	bl func_8009AF20
/* 8058CAA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058CAAC  7C 08 03 A6 */	mtlr r0
/* 8058CAB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8058CAB4  4E 80 00 20 */	blr 

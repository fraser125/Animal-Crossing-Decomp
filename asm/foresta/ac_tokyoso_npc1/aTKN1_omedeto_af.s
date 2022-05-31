lbl_8058D040:
/* 8058D040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D044  7C 08 02 A6 */	mflr r0
/* 8058D048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D050  7C 7F 1B 78 */	mr r31, r3
/* 8058D054  38 60 00 0F */	li r3, 0xf
/* 8058D058  93 C1 00 08 */	stw r30, 8(r1)
/* 8058D05C  7C 9E 23 78 */	mr r30, r4
/* 8058D060  38 80 00 08 */	li r4, 8
/* 8058D064  4B E1 0D 69 */	bl mEv_get_save_area
/* 8058D068  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8058D06C  38 A0 00 20 */	li r5, 0x20
/* 8058D070  A0 C3 00 02 */	lhz r6, 2(r3)
/* 8058D074  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8058D078  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058D07C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058D080  7C A0 00 30 */	slw r0, r5, r0
/* 8058D084  7C C0 00 39 */	and. r0, r6, r0
/* 8058D088  41 82 00 4C */	beq lbl_8058D0D4
/* 8058D08C  38 00 00 05 */	li r0, 5
/* 8058D090  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058D094  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 8058D098  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058D09C  3C 83 00 02 */	addis r4, r3, 2
/* 8058D0A0  7F E3 FB 78 */	mr r3, r31
/* 8058D0A4  A0 BF 00 06 */	lhz r5, 6(r31)
/* 8058D0A8  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058D0AC  3C A5 FF FF */	addis r5, r5, 0xffff
/* 8058D0B0  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 8058D0B4  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 8058D0B8  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 8058D0BC  7D 89 03 A6 */	mtctr r12
/* 8058D0C0  4E 80 04 21 */	bctrl 
/* 8058D0C4  7F E3 FB 78 */	mr r3, r31
/* 8058D0C8  7F C4 F3 78 */	mr r4, r30
/* 8058D0CC  38 A0 00 01 */	li r5, 1
/* 8058D0D0  48 00 04 4D */	bl aTKN1_setup_think_proc
lbl_8058D0D4:
/* 8058D0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D0DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D0E0  7C 08 03 A6 */	mtlr r0
/* 8058D0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D0E8  4E 80 00 20 */	blr 

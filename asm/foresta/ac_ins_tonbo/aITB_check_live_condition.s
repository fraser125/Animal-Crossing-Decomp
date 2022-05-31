lbl_805A072C:
/* 805A072C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A0730  7C 08 02 A6 */	mflr r0
/* 805A0734  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A0738  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A073C  3B E0 00 01 */	li r31, 1
/* 805A0740  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A0744  7C 7E 1B 78 */	mr r30, r3
/* 805A0748  38 61 00 14 */	addi r3, r1, 0x14
/* 805A074C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805A0750  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A0754  90 81 00 14 */	stw r4, 0x14(r1)
/* 805A0758  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A075C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A0760  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A0764  4B DF 03 85 */	bl mCoBG_ExistHeightGap_KeepAndNow
/* 805A0768  2C 03 00 01 */	cmpwi r3, 1
/* 805A076C  40 82 00 0C */	bne lbl_805A0778
/* 805A0770  3B E0 00 00 */	li r31, 0
/* 805A0774  48 00 00 68 */	b lbl_805A07DC
lbl_805A0778:
/* 805A0778  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805A077C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805A0780  3C 63 00 02 */	addis r3, r3, 2
/* 805A0784  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 805A0788  2C 00 00 01 */	cmpwi r0, 1
/* 805A078C  40 82 00 0C */	bne lbl_805A0798
/* 805A0790  3B E0 00 00 */	li r31, 0
/* 805A0794  48 00 00 48 */	b lbl_805A07DC
lbl_805A0798:
/* 805A0798  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805A079C  38 61 00 08 */	addi r3, r1, 8
/* 805A07A0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A07A4  90 81 00 08 */	stw r4, 8(r1)
/* 805A07A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A07AC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A07B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A07B4  4B E0 6C 7D */	bl mFI_GetUnitFG
/* 805A07B8  28 03 00 00 */	cmplwi r3, 0
/* 805A07BC  41 82 00 1C */	beq lbl_805A07D8
/* 805A07C0  A0 03 00 00 */	lhz r0, 0(r3)
/* 805A07C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A07C8  41 82 00 10 */	beq lbl_805A07D8
/* 805A07CC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 805A07D0  2C 00 00 05 */	cmpwi r0, 5
/* 805A07D4  40 82 00 08 */	bne lbl_805A07DC
lbl_805A07D8:
/* 805A07D8  3B E0 00 00 */	li r31, 0
lbl_805A07DC:
/* 805A07DC  2C 1F 00 00 */	cmpwi r31, 0
/* 805A07E0  40 82 00 14 */	bne lbl_805A07F4
/* 805A07E4  88 1E 02 1E */	lbz r0, 0x21e(r30)
/* 805A07E8  38 60 00 01 */	li r3, 1
/* 805A07EC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 805A07F0  98 1E 02 1E */	stb r0, 0x21e(r30)
lbl_805A07F4:
/* 805A07F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A07F8  7F E3 FB 78 */	mr r3, r31
/* 805A07FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A0800  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A0804  7C 08 03 A6 */	mtlr r0
/* 805A0808  38 21 00 30 */	addi r1, r1, 0x30
/* 805A080C  4E 80 00 20 */	blr 

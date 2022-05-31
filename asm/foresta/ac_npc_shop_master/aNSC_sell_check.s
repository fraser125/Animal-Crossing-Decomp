lbl_8057A7E0:
/* 8057A7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A7E4  7C 08 02 A6 */	mflr r0
/* 8057A7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A7F0  4B B2 06 E5 */	bl func_8009AED4
/* 8057A7F4  7C 7D 1B 78 */	mr r29, r3
/* 8057A7F8  7C 9E 23 78 */	mr r30, r4
/* 8057A7FC  4B E4 4E AD */	bl func_803BF6A8
/* 8057A800  4B E4 64 99 */	bl mMsg_Check_MainNormalContinue
/* 8057A804  2C 03 00 00 */	cmpwi r3, 0
/* 8057A808  41 82 00 78 */	beq lbl_8057A880
/* 8057A80C  3B E0 FF FF */	li r31, -1
/* 8057A810  4B E0 8D 31 */	bl func_80383540
/* 8057A814  4B E0 93 59 */	bl mChoice_Get_ChoseNum
/* 8057A818  2C 03 00 01 */	cmpwi r3, 1
/* 8057A81C  41 82 00 1C */	beq lbl_8057A838
/* 8057A820  40 80 00 1C */	bge lbl_8057A83C
/* 8057A824  2C 03 00 00 */	cmpwi r3, 0
/* 8057A828  40 80 00 08 */	bge lbl_8057A830
/* 8057A82C  48 00 00 10 */	b lbl_8057A83C
lbl_8057A830:
/* 8057A830  3B E0 00 20 */	li r31, 0x20
/* 8057A834  48 00 00 08 */	b lbl_8057A83C
lbl_8057A838:
/* 8057A838  3B E0 00 21 */	li r31, 0x21
lbl_8057A83C:
/* 8057A83C  2C 1F FF FF */	cmpwi r31, -1
/* 8057A840  41 82 00 40 */	beq lbl_8057A880
/* 8057A844  88 1D 09 B8 */	lbz r0, 0x9b8(r29)
/* 8057A848  28 00 00 01 */	cmplwi r0, 1
/* 8057A84C  40 82 00 24 */	bne lbl_8057A870
/* 8057A850  A0 1D 09 B4 */	lhz r0, 0x9b4(r29)
/* 8057A854  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8057A858  2C 00 00 04 */	cmpwi r0, 4
/* 8057A85C  40 82 00 14 */	bne lbl_8057A870
/* 8057A860  93 FD 09 98 */	stw r31, 0x998(r29)
/* 8057A864  3B E0 00 27 */	li r31, 0x27
/* 8057A868  A0 1D 09 BC */	lhz r0, 0x9bc(r29)
/* 8057A86C  B0 1D 09 BE */	sth r0, 0x9be(r29)
lbl_8057A870:
/* 8057A870  7F A3 EB 78 */	mr r3, r29
/* 8057A874  7F C4 F3 78 */	mr r4, r30
/* 8057A878  7F E5 FB 78 */	mr r5, r31
/* 8057A87C  48 00 1C 39 */	bl aNSC_setupAction
lbl_8057A880:
/* 8057A880  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A884  4B B2 06 9D */	bl func_8009AF20
/* 8057A888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A88C  7C 08 03 A6 */	mtlr r0
/* 8057A890  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A894  4E 80 00 20 */	blr 

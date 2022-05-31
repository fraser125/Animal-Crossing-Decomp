lbl_804074E8:
/* 804074E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804074EC  7C 08 02 A6 */	mflr r0
/* 804074F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804074F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804074F8  7C 7F 1B 78 */	mr r31, r3
/* 804074FC  4B FF FF 81 */	bl lbRk_ToSeiyoMonthAndDay
/* 80407500  38 1F F8 30 */	addi r0, r31, -2000
/* 80407504  3C 80 80 66 */	lis r4, l_lbRk_ConvertTable@ha /* 0x8065EBF4@ha */
/* 80407508  1C A0 00 1A */	mulli r5, r0, 0x1a
/* 8040750C  88 63 00 00 */	lbz r3, 0(r3)
/* 80407510  38 84 EB F4 */	addi r4, r4, l_lbRk_ConvertTable@l /* 0x8065EBF4@l */
/* 80407514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80407518  38 03 00 01 */	addi r0, r3, 1
/* 8040751C  7C 64 2A 14 */	add r3, r4, r5
/* 80407520  88 63 00 18 */	lbz r3, 0x18(r3)
/* 80407524  7C 03 00 50 */	subf r0, r3, r0
/* 80407528  7C 00 00 34 */	cntlzw r0, r0
/* 8040752C  54 03 D9 7E */	srwi r3, r0, 5
/* 80407530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80407534  7C 08 03 A6 */	mtlr r0
/* 80407538  38 21 00 10 */	addi r1, r1, 0x10
/* 8040753C  4E 80 00 20 */	blr 

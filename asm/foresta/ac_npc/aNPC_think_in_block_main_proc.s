lbl_80537744:
/* 80537744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80537748  7C 08 02 A6 */	mflr r0
/* 8053774C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80537750  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80537754  7C 7F 1B 78 */	mr r31, r3
/* 80537758  88 03 08 33 */	lbz r0, 0x833(r3)
/* 8053775C  28 00 00 00 */	cmplwi r0, 0
/* 80537760  40 82 00 24 */	bne lbl_80537784
/* 80537764  88 1F 08 98 */	lbz r0, 0x898(r31)
/* 80537768  28 00 00 01 */	cmplwi r0, 1
/* 8053776C  41 82 00 18 */	beq lbl_80537784
/* 80537770  88 1F 08 18 */	lbz r0, 0x818(r31)
/* 80537774  28 00 00 01 */	cmplwi r0, 1
/* 80537778  40 82 00 0C */	bne lbl_80537784
/* 8053777C  38 00 00 01 */	li r0, 1
/* 80537780  98 1F 08 99 */	stb r0, 0x899(r31)
lbl_80537784:
/* 80537784  7F E3 FB 78 */	mr r3, r31
/* 80537788  4B FF FE 3D */	bl aNPC_think_in_block_chk_interrupt_proc
/* 8053778C  2C 03 00 00 */	cmpwi r3, 0
/* 80537790  40 82 00 9C */	bne lbl_8053782C
/* 80537794  7F E3 FB 78 */	mr r3, r31
/* 80537798  4B FF FF 01 */	bl aNPC_think_in_block_check_humanoid
/* 8053779C  2C 03 00 01 */	cmpwi r3, 1
/* 805377A0  40 82 00 10 */	bne lbl_805377B0
/* 805377A4  7F E3 FB 78 */	mr r3, r31
/* 805377A8  4B FF FD 59 */	bl aNPC_think_in_block_setup_end
/* 805377AC  48 00 00 80 */	b lbl_8053782C
lbl_805377B0:
/* 805377B0  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 805377B4  28 00 00 00 */	cmplwi r0, 0
/* 805377B8  41 82 00 6C */	beq lbl_80537824
/* 805377BC  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805377C0  38 61 00 0C */	addi r3, r1, 0xc
/* 805377C4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805377C8  38 81 00 08 */	addi r4, r1, 8
/* 805377CC  38 A1 00 10 */	addi r5, r1, 0x10
/* 805377D0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805377D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805377D8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805377DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805377E0  4B E6 DF 81 */	bl mFI_Wpos2BlockNum
/* 805377E4  88 7F 00 08 */	lbz r3, 8(r31)
/* 805377E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805377EC  7C 63 07 74 */	extsb r3, r3
/* 805377F0  7C 03 00 00 */	cmpw r3, r0
/* 805377F4  40 82 00 38 */	bne lbl_8053782C
/* 805377F8  88 7F 00 09 */	lbz r3, 9(r31)
/* 805377FC  80 01 00 08 */	lwz r0, 8(r1)
/* 80537800  7C 63 07 74 */	extsb r3, r3
/* 80537804  7C 03 00 00 */	cmpw r3, r0
/* 80537808  40 82 00 24 */	bne lbl_8053782C
/* 8053780C  88 1F 09 40 */	lbz r0, 0x940(r31)
/* 80537810  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80537814  40 82 00 18 */	bne lbl_8053782C
/* 80537818  7F E3 FB 78 */	mr r3, r31
/* 8053781C  4B FF FC E5 */	bl aNPC_think_in_block_setup_end
/* 80537820  48 00 00 0C */	b lbl_8053782C
lbl_80537824:
/* 80537824  7F E3 FB 78 */	mr r3, r31
/* 80537828  4B FF FE A9 */	bl aNPC_think_in_block_next_act
lbl_8053782C:
/* 8053782C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80537830  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80537834  7C 08 03 A6 */	mtlr r0
/* 80537838  38 21 00 30 */	addi r1, r1, 0x30
/* 8053783C  4E 80 00 20 */	blr 

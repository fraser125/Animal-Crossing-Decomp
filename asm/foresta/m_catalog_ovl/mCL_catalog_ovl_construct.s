lbl_805CC008:
/* 805CC008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC00C  7C 08 02 A6 */	mflr r0
/* 805CC010  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CC018  93 C1 00 08 */	stw r30, 8(r1)
/* 805CC01C  7C 7E 1B 78 */	mr r30, r3
/* 805CC020  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CC024  80 1F 09 CC */	lwz r0, 0x9cc(r31)
/* 805CC028  28 00 00 00 */	cmplwi r0, 0
/* 805CC02C  40 82 00 70 */	bne lbl_805CC09C
/* 805CC030  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000DA00@ha */
/* 805CC034  38 63 DA 00 */	addi r3, r3, 0xDA00 /* 0x0000DA00@l */
/* 805CC038  4B DF 04 25 */	bl zelda_malloc
/* 805CC03C  90 7F 09 CC */	stw r3, 0x9cc(r31)
/* 805CC040  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000DA00@ha */
/* 805CC044  38 83 DA 00 */	addi r4, r3, 0xDA00 /* 0x0000DA00@l */
/* 805CC048  38 A0 00 00 */	li r5, 0
/* 805CC04C  80 7F 09 CC */	lwz r3, 0x9cc(r31)
/* 805CC050  4B DE E9 F9 */	bl mem_clear
/* 805CC054  80 7F 09 CC */	lwz r3, 0x9cc(r31)
/* 805CC058  38 80 00 00 */	li r4, 0
/* 805CC05C  38 00 00 02 */	li r0, 2
/* 805CC060  98 83 00 00 */	stb r4, 0(r3)
/* 805CC064  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805CC068  7C 09 03 A6 */	mtctr r0
lbl_805CC06C:
/* 805CC06C  80 7F 09 CC */	lwz r3, 0x9cc(r31)
/* 805CC070  38 04 08 60 */	addi r0, r4, 0x860
/* 805CC074  7C A3 01 2E */	stwx r5, r3, r0
/* 805CC078  38 A5 20 00 */	addi r5, r5, 0x2000
/* 805CC07C  80 1F 09 CC */	lwz r0, 0x9cc(r31)
/* 805CC080  7C 60 22 14 */	add r3, r0, r4
/* 805CC084  38 84 50 A0 */	addi r4, r4, 0x50a0
/* 805CC088  38 03 08 87 */	addi r0, r3, 0x887
/* 805CC08C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 805CC090  90 03 08 64 */	stw r0, 0x864(r3)
/* 805CC094  42 00 FF D8 */	bdnz lbl_805CC06C
/* 805CC098  90 BE 00 28 */	stw r5, 0x28(r30)
lbl_805CC09C:
/* 805CC09C  7F C3 F3 78 */	mr r3, r30
/* 805CC0A0  4B FF FC A5 */	bl mCL_catalog_ovl_init
/* 805CC0A4  7F C3 F3 78 */	mr r3, r30
/* 805CC0A8  4B FF FC 55 */	bl mCL_catalog_ovl_set_proc
/* 805CC0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CC0B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CC0B8  7C 08 03 A6 */	mtlr r0
/* 805CC0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC0C0  4E 80 00 20 */	blr 

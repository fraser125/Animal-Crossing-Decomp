lbl_8041A808:
/* 8041A808  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041A80C  7C 08 02 A6 */	mflr r0
/* 8041A810  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80643DB4@ha */
/* 8041A814  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8041A818  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041A81C  38 83 3D B4 */	addi r4, r3, lit_725@l /* 0x80643DB4@l */
/* 8041A820  3C 60 80 64 */	lis r3, lit_726@ha /* 0x80643DBC@ha */
/* 8041A824  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8041A828  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8041A82C  38 63 3D BC */	addi r3, r3, lit_726@l /* 0x80643DBC@l */
/* 8041A830  38 00 00 03 */	li r0, 3
/* 8041A834  3F E6 00 02 */	addis r31, r6, 2
/* 8041A838  80 A4 00 00 */	lwz r5, 0(r4)
/* 8041A83C  80 84 00 04 */	lwz r4, 4(r4)
/* 8041A840  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8041A844  38 A1 00 10 */	addi r5, r1, 0x10
/* 8041A848  90 81 00 10 */	stw r4, 0x10(r1)
/* 8041A84C  38 83 FF FC */	addi r4, r3, -4
/* 8041A850  7C 09 03 A6 */	mtctr r0
lbl_8041A854:
/* 8041A854  80 64 00 04 */	lwz r3, 4(r4)
/* 8041A858  84 04 00 08 */	lwzu r0, 8(r4)
/* 8041A85C  90 65 00 04 */	stw r3, 4(r5)
/* 8041A860  94 05 00 08 */	stwu r0, 8(r5)
/* 8041A864  42 00 FF F0 */	bdnz lbl_8041A854
/* 8041A868  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041A86C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041A870  3C 63 00 02 */	addis r3, r3, 2
/* 8041A874  A0 03 05 60 */	lhz r0, 0x560(r3)
/* 8041A878  88 63 05 54 */	lbz r3, 0x554(r3)
/* 8041A87C  B0 01 00 08 */	sth r0, 8(r1)
/* 8041A880  4B FF FF 35 */	bl special_type2kind
/* 8041A884  88 9F 61 25 */	lbz r4, 0x6125(r31)
/* 8041A888  88 01 00 08 */	lbz r0, 8(r1)
/* 8041A88C  90 7F 04 A0 */	stw r3, 0x4a0(r31)
/* 8041A890  7C 04 00 40 */	cmplw r4, r0
/* 8041A894  41 81 00 0C */	bgt lbl_8041A8A0
/* 8041A898  A1 3F 61 26 */	lhz r9, 0x6126(r31)
/* 8041A89C  48 00 00 0C */	b lbl_8041A8A8
lbl_8041A8A0:
/* 8041A8A0  A0 7F 61 26 */	lhz r3, 0x6126(r31)
/* 8041A8A4  39 23 00 01 */	addi r9, r3, 1
lbl_8041A8A8:
/* 8041A8A8  80 DF 04 A0 */	lwz r6, 0x4a0(r31)
/* 8041A8AC  38 80 00 00 */	li r4, 0
/* 8041A8B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8041A8B4  89 01 00 08 */	lbz r8, 8(r1)
/* 8041A8B8  54 C0 10 7A */	rlwinm r0, r6, 2, 1, 0x1d
/* 8041A8BC  38 61 00 14 */	addi r3, r1, 0x14
/* 8041A8C0  88 E1 00 09 */	lbz r7, 9(r1)
/* 8041A8C4  7C A5 30 AE */	lbzx r5, r5, r6
/* 8041A8C8  7D 83 00 2E */	lwzx r12, r3, r0
/* 8041A8CC  B1 3F 04 9E */	sth r9, 0x49e(r31)
/* 8041A8D0  99 1F 04 9D */	stb r8, 0x49d(r31)
/* 8041A8D4  98 FF 04 9B */	stb r7, 0x49b(r31)
/* 8041A8D8  98 BF 04 9A */	stb r5, 0x49a(r31)
/* 8041A8DC  98 9F 04 99 */	stb r4, 0x499(r31)
/* 8041A8E0  98 9F 04 98 */	stb r4, 0x498(r31)
/* 8041A8E4  7D 89 03 A6 */	mtctr r12
/* 8041A8E8  4E 80 04 21 */	bctrl 
/* 8041A8EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041A8F0  38 60 00 01 */	li r3, 1
/* 8041A8F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8041A8F8  7C 08 03 A6 */	mtlr r0
/* 8041A8FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8041A900  4E 80 00 20 */	blr 

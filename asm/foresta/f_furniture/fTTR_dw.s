lbl_8063D654:
/* 8063D654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D658  7C 08 02 A6 */	mflr r0
/* 8063D65C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D660  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D664  4B A5 D8 71 */	bl func_8009AED4
/* 8063D668  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063D66C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063D670  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 8063D674  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063D678  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063D67C  38 7E 00 08 */	addi r3, r30, 8
/* 8063D680  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063D684  90 1E 00 00 */	stw r0, 0(r30)
/* 8063D688  80 65 00 00 */	lwz r3, 0(r5)
/* 8063D68C  4B DC FD 49 */	bl _Matrix_to_Mtx_new
/* 8063D690  90 7E 00 04 */	stw r3, 4(r30)
/* 8063D694  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 8063D698  3C A0 81 0F */	lis r5, int_tak_tailor_on_model@ha /* 0x810F71A0@ha */
/* 8063D69C  3C 80 81 0F */	lis r4, int_tak_tailor_onT_model@ha /* 0x810F7218@ha */
/* 8063D6A0  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8063D6A4  3C 60 81 0F */	lis r3, int_tak_tailor_offT_model@ha /* 0x810F7310@ha */
/* 8063D6A8  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 8063D6AC  3C C0 DE 00 */	lis r6, 0xde00
/* 8063D6B0  38 08 00 08 */	addi r0, r8, 8
/* 8063D6B4  38 A5 71 A0 */	addi r5, r5, int_tak_tailor_on_model@l /* 0x810F71A0@l */
/* 8063D6B8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063D6BC  38 84 72 18 */	addi r4, r4, int_tak_tailor_onT_model@l /* 0x810F7218@l */
/* 8063D6C0  38 03 73 10 */	addi r0, r3, int_tak_tailor_offT_model@l /* 0x810F7310@l */
/* 8063D6C4  90 E8 00 00 */	stw r7, 0(r8)
/* 8063D6C8  93 A8 00 04 */	stw r29, 4(r8)
/* 8063D6CC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8063D6D0  38 67 00 08 */	addi r3, r7, 8
/* 8063D6D4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063D6D8  90 C7 00 00 */	stw r6, 0(r7)
/* 8063D6DC  90 A7 00 04 */	stw r5, 4(r7)
/* 8063D6E0  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063D6E4  38 65 00 08 */	addi r3, r5, 8
/* 8063D6E8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063D6EC  90 C5 00 00 */	stw r6, 0(r5)
/* 8063D6F0  90 85 00 04 */	stw r4, 4(r5)
/* 8063D6F4  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063D6F8  38 64 00 08 */	addi r3, r4, 8
/* 8063D6FC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063D700  90 C4 00 00 */	stw r6, 0(r4)
/* 8063D704  90 04 00 04 */	stw r0, 4(r4)
/* 8063D708  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D70C  4B A5 D8 15 */	bl func_8009AF20
/* 8063D710  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063D714  7C 08 03 A6 */	mtlr r0
/* 8063D718  38 21 00 20 */	addi r1, r1, 0x20
/* 8063D71C  4E 80 00 20 */	blr 

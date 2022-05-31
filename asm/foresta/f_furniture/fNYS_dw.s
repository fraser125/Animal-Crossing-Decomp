lbl_80635118:
/* 80635118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063511C  7C 08 02 A6 */	mflr r0
/* 80635120  90 01 00 24 */	stw r0, 0x24(r1)
/* 80635124  39 61 00 20 */	addi r11, r1, 0x20
/* 80635128  4B A6 5D AD */	bl func_8009AED4
/* 8063512C  83 E5 00 00 */	lwz r31, 0(r5)
/* 80635130  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80635134  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 80635138  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063513C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 80635140  38 7E 00 08 */	addi r3, r30, 8
/* 80635144  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80635148  90 1E 00 00 */	stw r0, 0(r30)
/* 8063514C  80 65 00 00 */	lwz r3, 0(r5)
/* 80635150  4B DD 82 85 */	bl _Matrix_to_Mtx_new
/* 80635154  90 7E 00 04 */	stw r3, 4(r30)
/* 80635158  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 8063515C  3C A0 80 F7 */	lis r5, int_nog_yamishop_on_model@ha /* 0x80F778D0@ha */
/* 80635160  3C 80 80 F7 */	lis r4, int_nog_yamishop_onT_model@ha /* 0x80F77928@ha */
/* 80635164  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 80635168  3C 60 80 F7 */	lis r3, int_nog_yamishop_offT_model@ha /* 0x80F779D0@ha */
/* 8063516C  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 80635170  3C C0 DE 00 */	lis r6, 0xde00
/* 80635174  38 08 00 08 */	addi r0, r8, 8
/* 80635178  38 A5 78 D0 */	addi r5, r5, int_nog_yamishop_on_model@l /* 0x80F778D0@l */
/* 8063517C  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80635180  38 84 79 28 */	addi r4, r4, int_nog_yamishop_onT_model@l /* 0x80F77928@l */
/* 80635184  38 03 79 D0 */	addi r0, r3, int_nog_yamishop_offT_model@l /* 0x80F779D0@l */
/* 80635188  90 E8 00 00 */	stw r7, 0(r8)
/* 8063518C  93 A8 00 04 */	stw r29, 4(r8)
/* 80635190  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80635194  38 67 00 08 */	addi r3, r7, 8
/* 80635198  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063519C  90 C7 00 00 */	stw r6, 0(r7)
/* 806351A0  90 A7 00 04 */	stw r5, 4(r7)
/* 806351A4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 806351A8  38 65 00 08 */	addi r3, r5, 8
/* 806351AC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806351B0  90 C5 00 00 */	stw r6, 0(r5)
/* 806351B4  90 85 00 04 */	stw r4, 4(r5)
/* 806351B8  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 806351BC  38 64 00 08 */	addi r3, r4, 8
/* 806351C0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806351C4  90 C4 00 00 */	stw r6, 0(r4)
/* 806351C8  90 04 00 04 */	stw r0, 4(r4)
/* 806351CC  39 61 00 20 */	addi r11, r1, 0x20
/* 806351D0  4B A6 5D 51 */	bl func_8009AF20
/* 806351D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806351D8  7C 08 03 A6 */	mtlr r0
/* 806351DC  38 21 00 20 */	addi r1, r1, 0x20
/* 806351E0  4E 80 00 20 */	blr 

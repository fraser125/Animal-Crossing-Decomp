lbl_8063529C:
/* 8063529C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806352A0  7C 08 02 A6 */	mflr r0
/* 806352A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806352A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806352AC  4B A6 5C 29 */	bl func_8009AED4
/* 806352B0  83 E5 00 00 */	lwz r31, 0(r5)
/* 806352B4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806352B8  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 806352BC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806352C0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806352C4  38 7E 00 08 */	addi r3, r30, 8
/* 806352C8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806352CC  90 1E 00 00 */	stw r0, 0(r30)
/* 806352D0  80 65 00 00 */	lwz r3, 0(r5)
/* 806352D4  4B DD 81 01 */	bl _Matrix_to_Mtx_new
/* 806352D8  90 7E 00 04 */	stw r3, 4(r30)
/* 806352DC  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 806352E0  3C A0 80 F8 */	lis r5, int_nog_yubin_on_model@ha /* 0x80F783F0@ha */
/* 806352E4  3C 80 80 F8 */	lis r4, int_nog_yubin_onT_model@ha /* 0x80F78448@ha */
/* 806352E8  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 806352EC  3C 60 80 F8 */	lis r3, int_nog_yubin_offT_model@ha /* 0x80F784D0@ha */
/* 806352F0  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 806352F4  3C C0 DE 00 */	lis r6, 0xde00
/* 806352F8  38 08 00 08 */	addi r0, r8, 8
/* 806352FC  38 A5 83 F0 */	addi r5, r5, int_nog_yubin_on_model@l /* 0x80F783F0@l */
/* 80635300  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80635304  38 84 84 48 */	addi r4, r4, int_nog_yubin_onT_model@l /* 0x80F78448@l */
/* 80635308  38 03 84 D0 */	addi r0, r3, int_nog_yubin_offT_model@l /* 0x80F784D0@l */
/* 8063530C  90 E8 00 00 */	stw r7, 0(r8)
/* 80635310  93 A8 00 04 */	stw r29, 4(r8)
/* 80635314  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80635318  38 67 00 08 */	addi r3, r7, 8
/* 8063531C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80635320  90 C7 00 00 */	stw r6, 0(r7)
/* 80635324  90 A7 00 04 */	stw r5, 4(r7)
/* 80635328  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063532C  38 65 00 08 */	addi r3, r5, 8
/* 80635330  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80635334  90 C5 00 00 */	stw r6, 0(r5)
/* 80635338  90 85 00 04 */	stw r4, 4(r5)
/* 8063533C  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80635340  38 64 00 08 */	addi r3, r4, 8
/* 80635344  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80635348  90 C4 00 00 */	stw r6, 0(r4)
/* 8063534C  90 04 00 04 */	stw r0, 4(r4)
/* 80635350  39 61 00 20 */	addi r11, r1, 0x20
/* 80635354  4B A6 5B CD */	bl func_8009AF20
/* 80635358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063535C  7C 08 03 A6 */	mtlr r0
/* 80635360  38 21 00 20 */	addi r1, r1, 0x20
/* 80635364  4E 80 00 20 */	blr 

lbl_80633788:
/* 80633788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063378C  7C 08 02 A6 */	mflr r0
/* 80633790  90 01 00 24 */	stw r0, 0x24(r1)
/* 80633794  39 61 00 20 */	addi r11, r1, 0x20
/* 80633798  4B A6 77 3D */	bl func_8009AED4
/* 8063379C  83 E5 00 00 */	lwz r31, 0(r5)
/* 806337A0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806337A4  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 806337A8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806337AC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806337B0  38 7E 00 08 */	addi r3, r30, 8
/* 806337B4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806337B8  90 1E 00 00 */	stw r0, 0(r30)
/* 806337BC  80 65 00 00 */	lwz r3, 0(r5)
/* 806337C0  4B DD 9C 15 */	bl _Matrix_to_Mtx_new
/* 806337C4  90 7E 00 04 */	stw r3, 4(r30)
/* 806337C8  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 806337CC  3C A0 80 F6 */	lis r5, int_nog_myhome2_on_model@ha /* 0x80F590E0@ha */
/* 806337D0  3C 80 80 F6 */	lis r4, int_nog_myhome2_off_model@ha /* 0x80F59160@ha */
/* 806337D4  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 806337D8  3C 60 80 F6 */	lis r3, int_nog_myhome2_onT_model@ha /* 0x80F591C0@ha */
/* 806337DC  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 806337E0  3C C0 DE 00 */	lis r6, 0xde00
/* 806337E4  38 08 00 08 */	addi r0, r8, 8
/* 806337E8  38 A5 90 E0 */	addi r5, r5, int_nog_myhome2_on_model@l /* 0x80F590E0@l */
/* 806337EC  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 806337F0  38 84 91 60 */	addi r4, r4, int_nog_myhome2_off_model@l /* 0x80F59160@l */
/* 806337F4  38 03 91 C0 */	addi r0, r3, int_nog_myhome2_onT_model@l /* 0x80F591C0@l */
/* 806337F8  90 E8 00 00 */	stw r7, 0(r8)
/* 806337FC  93 A8 00 04 */	stw r29, 4(r8)
/* 80633800  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80633804  38 67 00 08 */	addi r3, r7, 8
/* 80633808  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063380C  90 C7 00 00 */	stw r6, 0(r7)
/* 80633810  90 A7 00 04 */	stw r5, 4(r7)
/* 80633814  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80633818  38 65 00 08 */	addi r3, r5, 8
/* 8063381C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633820  90 C5 00 00 */	stw r6, 0(r5)
/* 80633824  90 85 00 04 */	stw r4, 4(r5)
/* 80633828  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063382C  38 64 00 08 */	addi r3, r4, 8
/* 80633830  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633834  90 C4 00 00 */	stw r6, 0(r4)
/* 80633838  90 04 00 04 */	stw r0, 4(r4)
/* 8063383C  39 61 00 20 */	addi r11, r1, 0x20
/* 80633840  4B A6 76 E1 */	bl func_8009AF20
/* 80633844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633848  7C 08 03 A6 */	mtlr r0
/* 8063384C  38 21 00 20 */	addi r1, r1, 0x20
/* 80633850  4E 80 00 20 */	blr 

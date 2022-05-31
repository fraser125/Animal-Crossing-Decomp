lbl_805AEAD8:
/* 805AEAD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AEADC  7C 08 02 A6 */	mflr r0
/* 805AEAE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AEAE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805AEAE8  4B AE C3 E5 */	bl func_8009AECC
/* 805AEAEC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805AEAF0  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805AEAF4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805AEAF8  7C 9D 23 78 */	mr r29, r4
/* 805AEAFC  3C 63 00 02 */	addis r3, r3, 2
/* 805AEB00  20 00 00 03 */	subfic r0, r0, 3
/* 805AEB04  80 63 60 98 */	lwz r3, 0x6098(r3)
/* 805AEB08  7C 00 00 34 */	cntlzw r0, r0
/* 805AEB0C  54 1B D9 7E */	srwi r27, r0, 5
/* 805AEB10  83 E4 00 00 */	lwz r31, 0(r4)
/* 805AEB14  81 83 00 A4 */	lwz r12, 0xa4(r3)
/* 805AEB18  38 60 00 51 */	li r3, 0x51
/* 805AEB1C  7D 89 03 A6 */	mtctr r12
/* 805AEB20  4E 80 04 21 */	bctrl 
/* 805AEB24  7C 7C 1B 78 */	mr r28, r3
/* 805AEB28  7F E3 FB 78 */	mr r3, r31
/* 805AEB2C  4B E3 66 7D */	bl _texture_z_light_fog_prim_npc
/* 805AEB30  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805AEB34  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805AEB38  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805AEB3C  3C A0 80 65 */	lis r5, lit_566@ha /* 0x8064A70C@ha */
/* 805AEB40  90 1E 00 00 */	stw r0, 0(r30)
/* 805AEB44  3C 80 80 65 */	lis r4, lit_567@ha /* 0x8064A710@ha */
/* 805AEB48  3C 60 80 65 */	lis r3, lit_568@ha /* 0x8064A714@ha */
/* 805AEB4C  38 C5 A7 0C */	addi r6, r5, lit_566@l /* 0x8064A70C@l */
/* 805AEB50  38 A4 A7 10 */	addi r5, r4, lit_567@l /* 0x8064A710@l */
/* 805AEB54  93 9E 00 04 */	stw r28, 4(r30)
/* 805AEB58  38 83 A7 14 */	addi r4, r3, lit_568@l /* 0x8064A714@l */
/* 805AEB5C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805AEB60  C0 45 00 00 */	lfs f2, 0(r5)
/* 805AEB64  38 60 00 01 */	li r3, 1
/* 805AEB68  C0 64 00 00 */	lfs f3, 0(r4)
/* 805AEB6C  4B E5 D7 95 */	bl Matrix_translate
/* 805AEB70  7F E3 FB 78 */	mr r3, r31
/* 805AEB74  4B E5 E8 61 */	bl _Matrix_to_Mtx_new
/* 805AEB78  28 03 00 00 */	cmplwi r3, 0
/* 805AEB7C  41 82 00 40 */	beq lbl_805AEBBC
/* 805AEB80  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 805AEB84  3C 80 80 6C */	lis r4, model@ha /* 0x806C5014@ha */
/* 805AEB88  38 05 00 03 */	addi r0, r5, 0x0003 /* 0xDA380003@l */
/* 805AEB8C  3C A0 DE 00 */	lis r5, 0xde00
/* 805AEB90  90 1E 00 08 */	stw r0, 8(r30)
/* 805AEB94  57 60 10 3A */	slwi r0, r27, 2
/* 805AEB98  38 84 50 14 */	addi r4, r4, model@l /* 0x806C5014@l */
/* 805AEB9C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 805AEBA0  3B DE 00 10 */	addi r30, r30, 0x10
/* 805AEBA4  7F C3 F3 78 */	mr r3, r30
/* 805AEBA8  90 BE 00 00 */	stw r5, 0(r30)
/* 805AEBAC  3B DE 00 08 */	addi r30, r30, 8
/* 805AEBB0  7C 04 00 2E */	lwzx r0, r4, r0
/* 805AEBB4  90 03 00 04 */	stw r0, 4(r3)
/* 805AEBB8  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_805AEBBC:
/* 805AEBBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AEBC0  3C C0 80 6C */	lis r6, aDUM_shadow_data@ha /* 0x806C4F6C@ha */
/* 805AEBC4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AEBC8  3C A4 00 02 */	addis r5, r4, 2
/* 805AEBCC  7F A3 EB 78 */	mr r3, r29
/* 805AEBD0  38 86 4F 6C */	addi r4, r6, aDUM_shadow_data@l /* 0x806C4F6C@l */
/* 805AEBD4  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805AEBD8  38 A0 00 00 */	li r5, 0
/* 805AEBDC  81 86 00 04 */	lwz r12, 4(r6)
/* 805AEBE0  7D 89 03 A6 */	mtctr r12
/* 805AEBE4  4E 80 04 21 */	bctrl 
/* 805AEBE8  39 61 00 20 */	addi r11, r1, 0x20
/* 805AEBEC  4B AE C3 2D */	bl func_8009AF18
/* 805AEBF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AEBF4  7C 08 03 A6 */	mtlr r0
/* 805AEBF8  38 21 00 20 */	addi r1, r1, 0x20
/* 805AEBFC  4E 80 00 20 */	blr 

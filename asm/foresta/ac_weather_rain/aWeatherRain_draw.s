lbl_80603218:
/* 80603218  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060321C  7C 08 02 A6 */	mflr r0
/* 80603220  90 01 00 34 */	stw r0, 0x34(r1)
/* 80603224  39 61 00 30 */	addi r11, r1, 0x30
/* 80603228  4B A9 7C A5 */	bl func_8009AECC
/* 8060322C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80603230  A9 43 00 22 */	lha r10, 0x22(r3)
/* 80603234  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80603238  A8 03 00 20 */	lha r0, 0x20(r3)
/* 8060323C  3C C5 00 02 */	addis r6, r5, 2
/* 80603240  80 A3 00 00 */	lwz r5, 0(r3)
/* 80603244  81 06 60 84 */	lwz r8, 0x6084(r6)
/* 80603248  20 E0 00 08 */	subfic r7, r0, 8
/* 8060324C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80603250  3D 20 80 6D */	lis r9, data_806D1CB8@ha /* 0x806D1CB8@ha */
/* 80603254  81 08 00 00 */	lwz r8, 0(r8)
/* 80603258  2C 0A 00 01 */	cmpwi r10, 1
/* 8060325C  80 03 00 08 */	lwz r0, 8(r3)
/* 80603260  7C 9E 23 78 */	mr r30, r4
/* 80603264  90 A1 00 08 */	stw r5, 8(r1)
/* 80603268  3B E9 1C B8 */	addi r31, r9, data_806D1CB8@l /* 0x806D1CB8@l */
/* 8060326C  A8 A8 01 D8 */	lha r5, 0x1d8(r8)
/* 80603270  7C E3 07 34 */	extsh r3, r7
/* 80603274  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80603278  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060327C  40 82 00 94 */	bne lbl_80603310
/* 80603280  7C 60 0E 70 */	srawi r0, r3, 1
/* 80603284  83 7E 00 00 */	lwz r27, 0(r30)
/* 80603288  C0 21 00 08 */	lfs f1, 8(r1)
/* 8060328C  7C 1C 07 34 */	extsh r28, r0
/* 80603290  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80603294  38 60 00 00 */	li r3, 0
/* 80603298  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8060329C  4B E0 90 65 */	bl Matrix_translate
/* 806032A0  38 7E 20 4C */	addi r3, r30, 0x204c
/* 806032A4  38 80 00 01 */	li r4, 1
/* 806032A8  4B E0 8F F1 */	bl Matrix_mult
/* 806032AC  38 9F 00 30 */	addi r4, r31, 0x30
/* 806032B0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806032B4  C0 44 00 04 */	lfs f2, 4(r4)
/* 806032B8  38 60 00 01 */	li r3, 1
/* 806032BC  C0 64 00 08 */	lfs f3, 8(r4)
/* 806032C0  4B E0 91 2D */	bl Matrix_scale
/* 806032C4  83 BB 02 E0 */	lwz r29, 0x2e0(r27)
/* 806032C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806032CC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806032D0  38 7D 00 08 */	addi r3, r29, 8
/* 806032D4  90 7B 02 E0 */	stw r3, 0x2e0(r27)
/* 806032D8  90 1D 00 00 */	stw r0, 0(r29)
/* 806032DC  80 7E 00 00 */	lwz r3, 0(r30)
/* 806032E0  4B E0 A0 F5 */	bl _Matrix_to_Mtx_new
/* 806032E4  90 7D 00 04 */	stw r3, 4(r29)
/* 806032E8  3C 80 DE 00 */	lis r4, 0xde00
/* 806032EC  57 80 10 3A */	slwi r0, r28, 2
/* 806032F0  38 7F 00 00 */	addi r3, r31, 0
/* 806032F4  80 DB 02 E0 */	lwz r6, 0x2e0(r27)
/* 806032F8  38 A6 00 08 */	addi r5, r6, 8
/* 806032FC  90 BB 02 E0 */	stw r5, 0x2e0(r27)
/* 80603300  90 86 00 00 */	stw r4, 0(r6)
/* 80603304  7C 03 00 2E */	lwzx r0, r3, r0
/* 80603308  90 06 00 04 */	stw r0, 4(r6)
/* 8060330C  48 00 00 88 */	b lbl_80603394
lbl_80603310:
/* 80603310  7D 40 07 35 */	extsh. r0, r10
/* 80603314  40 82 00 80 */	bne lbl_80603394
/* 80603318  81 1E 00 00 */	lwz r8, 0(r30)
/* 8060331C  38 FF 00 24 */	addi r7, r31, 0x24
/* 80603320  C0 81 00 08 */	lfs f4, 8(r1)
/* 80603324  38 80 00 00 */	li r4, 0
/* 80603328  80 68 02 D4 */	lwz r3, 0x2d4(r8)
/* 8060332C  38 C0 00 00 */	li r6, 0
/* 80603330  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80603334  3B A3 FF C0 */	addi r29, r3, -64
/* 80603338  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8060333C  93 A8 02 D4 */	stw r29, 0x2d4(r8)
/* 80603340  7F A3 EB 78 */	mr r3, r29
/* 80603344  83 7E 00 00 */	lwz r27, 0(r30)
/* 80603348  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8060334C  C0 47 00 04 */	lfs f2, 4(r7)
/* 80603350  C0 67 00 08 */	lfs f3, 8(r7)
/* 80603354  4B E0 B0 85 */	bl suMtxMakeSRT
/* 80603358  80 DB 02 E0 */	lwz r6, 0x2e0(r27)
/* 8060335C  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 80603360  3C 60 80 9C */	lis r3, ef_ame02_04_modelT@ha /* 0x809BA228@ha */
/* 80603364  3C 80 DE 00 */	lis r4, 0xde00
/* 80603368  38 06 00 08 */	addi r0, r6, 8
/* 8060336C  38 A5 00 03 */	addi r5, r5, 0x0003 /* 0xDA380003@l */
/* 80603370  90 1B 02 E0 */	stw r0, 0x2e0(r27)
/* 80603374  38 03 A2 28 */	addi r0, r3, ef_ame02_04_modelT@l /* 0x809BA228@l */
/* 80603378  90 A6 00 00 */	stw r5, 0(r6)
/* 8060337C  93 A6 00 04 */	stw r29, 4(r6)
/* 80603380  80 BB 02 E0 */	lwz r5, 0x2e0(r27)
/* 80603384  38 65 00 08 */	addi r3, r5, 8
/* 80603388  90 7B 02 E0 */	stw r3, 0x2e0(r27)
/* 8060338C  90 85 00 00 */	stw r4, 0(r5)
/* 80603390  90 05 00 04 */	stw r0, 4(r5)
lbl_80603394:
/* 80603394  39 61 00 30 */	addi r11, r1, 0x30
/* 80603398  4B A9 7B 81 */	bl func_8009AF18
/* 8060339C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806033A0  7C 08 03 A6 */	mtlr r0
/* 806033A4  38 21 00 30 */	addi r1, r1, 0x30
/* 806033A8  4E 80 00 20 */	blr 

lbl_80411B60:
/* 80411B60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80411B64  7C 08 02 A6 */	mflr r0
/* 80411B68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80411B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80411B70  4B C8 93 61 */	bl func_8009AED0
/* 80411B74  7C 9C 23 78 */	mr r28, r4
/* 80411B78  83 E3 01 80 */	lwz r31, 0x180(r3)
/* 80411B7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80411B80  4B FD 35 89 */	bl _texture_z_light_fog_prim
/* 80411B84  3C 60 80 64 */	lis r3, data_8064399C@ha /* 0x8064399C@ha */
/* 80411B88  83 DC 00 00 */	lwz r30, 0(r28)
/* 80411B8C  38 83 39 9C */	addi r4, r3, data_8064399C@l /* 0x8064399C@l */
/* 80411B90  38 60 00 00 */	li r3, 0
/* 80411B94  C0 24 00 00 */	lfs f1, 0(r4)
/* 80411B98  FC 40 08 90 */	fmr f2, f1
/* 80411B9C  FC 60 08 90 */	fmr f3, f1
/* 80411BA0  4B FF A7 61 */	bl Matrix_translate
/* 80411BA4  3C 80 80 64 */	lis r4, lit_485@ha /* 0x806439A0@ha */
/* 80411BA8  38 60 00 01 */	li r3, 1
/* 80411BAC  C0 24 39 A0 */	lfs f1, lit_485@l(r4)  /* 0x806439A0@l */
/* 80411BB0  FC 40 08 90 */	fmr f2, f1
/* 80411BB4  FC 60 08 90 */	fmr f3, f1
/* 80411BB8  4B FF A8 35 */	bl Matrix_scale
/* 80411BBC  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 80411BC0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80411BC4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80411BC8  38 7D 00 08 */	addi r3, r29, 8
/* 80411BCC  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411BD0  90 1D 00 00 */	stw r0, 0(r29)
/* 80411BD4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80411BD8  4B FF B7 FD */	bl _Matrix_to_Mtx_new
/* 80411BDC  90 7D 00 04 */	stw r3, 4(r29)
/* 80411BE0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060030@ha */
/* 80411BE4  3C 60 80 90 */	lis r3, rom_myhome2_floor_model@ha /* 0x809068D0@ha */
/* 80411BE8  39 7F 00 20 */	addi r11, r31, 0x20
/* 80411BEC  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 80411BF0  38 04 00 30 */	addi r0, r4, 0x0030 /* 0xDB060030@l */
/* 80411BF4  39 84 00 20 */	addi r12, r4, 0x20
/* 80411BF8  39 44 00 24 */	addi r10, r4, 0x24
/* 80411BFC  38 BD 00 08 */	addi r5, r29, 8
/* 80411C00  39 3F 08 20 */	addi r9, r31, 0x820
/* 80411C04  90 BE 02 D0 */	stw r5, 0x2d0(r30)
/* 80411C08  39 04 00 28 */	addi r8, r4, 0x28
/* 80411C0C  38 FF 10 20 */	addi r7, r31, 0x1020
/* 80411C10  38 C4 00 2C */	addi r6, r4, 0x2c
/* 80411C14  90 1D 00 00 */	stw r0, 0(r29)
/* 80411C18  38 BF 18 20 */	addi r5, r31, 0x1820
/* 80411C1C  3C 80 DE 00 */	lis r4, 0xde00
/* 80411C20  38 03 68 D0 */	addi r0, r3, rom_myhome2_floor_model@l /* 0x809068D0@l */
/* 80411C24  93 FD 00 04 */	stw r31, 4(r29)
/* 80411C28  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80411C2C  38 7F 00 08 */	addi r3, r31, 8
/* 80411C30  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411C34  91 9F 00 00 */	stw r12, 0(r31)
/* 80411C38  91 7F 00 04 */	stw r11, 4(r31)
/* 80411C3C  81 7E 02 D0 */	lwz r11, 0x2d0(r30)
/* 80411C40  38 6B 00 08 */	addi r3, r11, 8
/* 80411C44  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411C48  91 4B 00 00 */	stw r10, 0(r11)
/* 80411C4C  91 2B 00 04 */	stw r9, 4(r11)
/* 80411C50  81 3E 02 D0 */	lwz r9, 0x2d0(r30)
/* 80411C54  38 69 00 08 */	addi r3, r9, 8
/* 80411C58  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411C5C  91 09 00 00 */	stw r8, 0(r9)
/* 80411C60  90 E9 00 04 */	stw r7, 4(r9)
/* 80411C64  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 80411C68  38 67 00 08 */	addi r3, r7, 8
/* 80411C6C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411C70  90 C7 00 00 */	stw r6, 0(r7)
/* 80411C74  90 A7 00 04 */	stw r5, 4(r7)
/* 80411C78  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80411C7C  38 65 00 08 */	addi r3, r5, 8
/* 80411C80  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411C84  90 85 00 00 */	stw r4, 0(r5)
/* 80411C88  90 05 00 04 */	stw r0, 4(r5)
/* 80411C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80411C90  4B C8 92 8D */	bl func_8009AF1C
/* 80411C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80411C98  7C 08 03 A6 */	mtlr r0
/* 80411C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80411CA0  4E 80 00 20 */	blr 

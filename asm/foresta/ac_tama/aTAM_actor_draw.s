lbl_805BDE9C:
/* 805BDE9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BDEA0  7C 08 02 A6 */	mflr r0
/* 805BDEA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BDEA8  39 61 00 20 */	addi r11, r1, 0x20
/* 805BDEAC  4B AD D0 25 */	bl func_8009AED0
/* 805BDEB0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805BDEB4  7C 7E 1B 78 */	mr r30, r3
/* 805BDEB8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805BDEBC  80 1E 02 AC */	lwz r0, 0x2ac(r30)
/* 805BDEC0  3C 63 00 02 */	addis r3, r3, 2
/* 805BDEC4  83 E4 00 00 */	lwz r31, 0(r4)
/* 805BDEC8  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805BDECC  7C 03 07 34 */	extsh r3, r0
/* 805BDED0  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BDED4  7D 89 03 A6 */	mtctr r12
/* 805BDED8  4E 80 04 21 */	bctrl 
/* 805BDEDC  7C 7D 1B 78 */	mr r29, r3
/* 805BDEE0  7F E3 FB 78 */	mr r3, r31
/* 805BDEE4  4B E2 72 25 */	bl _texture_z_light_fog_prim
/* 805BDEE8  3C 60 80 65 */	lis r3, data_8064AB8C@ha /* 0x8064AB8C@ha */
/* 805BDEEC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805BDEF0  C0 23 AB 8C */	lfs f1, data_8064AB8C@l(r3)  /* 0x8064AB8C@l */
/* 805BDEF4  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805BDEF8  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 805BDEFC  3C 60 80 65 */	lis r3, lit_490@ha /* 0x8064AB90@ha */
/* 805BDF00  38 83 AB 90 */	addi r4, r3, lit_490@l /* 0x8064AB90@l */
/* 805BDF04  FC 40 08 90 */	fmr f2, f1
/* 805BDF08  90 1C 00 00 */	stw r0, 0(r28)
/* 805BDF0C  38 60 00 01 */	li r3, 1
/* 805BDF10  C0 64 00 00 */	lfs f3, 0(r4)
/* 805BDF14  93 BC 00 04 */	stw r29, 4(r28)
/* 805BDF18  4B E4 E3 E9 */	bl Matrix_translate
/* 805BDF1C  7F E3 FB 78 */	mr r3, r31
/* 805BDF20  4B E4 F4 B5 */	bl _Matrix_to_Mtx_new
/* 805BDF24  28 03 00 00 */	cmplwi r3, 0
/* 805BDF28  41 82 00 44 */	beq lbl_805BDF6C
/* 805BDF2C  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 805BDF30  3C 80 80 6C */	lis r4, model@ha /* 0x806C7034@ha */
/* 805BDF34  38 A5 00 03 */	addi r5, r5, 0x0003 /* 0xDA380003@l */
/* 805BDF38  3C 00 DE 00 */	lis r0, 0xde00
/* 805BDF3C  90 BC 00 08 */	stw r5, 8(r28)
/* 805BDF40  38 84 70 34 */	addi r4, r4, model@l /* 0x806C7034@l */
/* 805BDF44  90 7C 00 0C */	stw r3, 0xc(r28)
/* 805BDF48  3B 9C 00 10 */	addi r28, r28, 0x10
/* 805BDF4C  7F 83 E3 78 */	mr r3, r28
/* 805BDF50  90 1C 00 00 */	stw r0, 0(r28)
/* 805BDF54  3B 9C 00 08 */	addi r28, r28, 8
/* 805BDF58  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805BDF5C  54 00 10 3A */	slwi r0, r0, 2
/* 805BDF60  7C 04 00 2E */	lwzx r0, r4, r0
/* 805BDF64  90 03 00 04 */	stw r0, 4(r3)
/* 805BDF68  93 9F 02 D0 */	stw r28, 0x2d0(r31)
lbl_805BDF6C:
/* 805BDF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805BDF70  4B AD CF AD */	bl func_8009AF1C
/* 805BDF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BDF78  7C 08 03 A6 */	mtlr r0
/* 805BDF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BDF80  4E 80 00 20 */	blr 

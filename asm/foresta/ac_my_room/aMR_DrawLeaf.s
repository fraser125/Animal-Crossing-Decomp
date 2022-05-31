lbl_80482B60:
/* 80482B60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80482B64  7C 08 02 A6 */	mflr r0
/* 80482B68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80482B6C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80482B70  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80482B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80482B78  4B C1 83 59 */	bl func_8009AED0
/* 80482B7C  7C 7C 1B 78 */	mr r28, r3
/* 80482B80  7C 9D 23 78 */	mr r29, r4
/* 80482B84  80 03 03 58 */	lwz r0, 0x358(r3)
/* 80482B88  2C 00 00 00 */	cmpwi r0, 0
/* 80482B8C  41 82 00 A8 */	beq lbl_80482C34
/* 80482B90  83 DD 00 00 */	lwz r30, 0(r29)
/* 80482B94  C3 FC 03 68 */	lfs f31, 0x368(r28)
/* 80482B98  7F C3 F3 78 */	mr r3, r30
/* 80482B9C  4B F6 25 6D */	bl _texture_z_light_fog_prim
/* 80482BA0  C0 3C 03 5C */	lfs f1, 0x35c(r28)
/* 80482BA4  38 60 00 00 */	li r3, 0
/* 80482BA8  C0 5C 03 60 */	lfs f2, 0x360(r28)
/* 80482BAC  C0 7C 03 64 */	lfs f3, 0x364(r28)
/* 80482BB0  4B F8 97 51 */	bl Matrix_translate
/* 80482BB4  FC 20 F8 90 */	fmr f1, f31
/* 80482BB8  38 60 00 01 */	li r3, 1
/* 80482BBC  FC 40 F8 90 */	fmr f2, f31
/* 80482BC0  FC 60 F8 90 */	fmr f3, f31
/* 80482BC4  4B F8 98 29 */	bl Matrix_scale
/* 80482BC8  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80482BCC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80482BD0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80482BD4  38 7F 00 08 */	addi r3, r31, 8
/* 80482BD8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80482BDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80482BE0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80482BE4  4B F8 A7 F1 */	bl _Matrix_to_Mtx_new
/* 80482BE8  90 7F 00 04 */	stw r3, 4(r31)
/* 80482BEC  3C 00 DE 00 */	lis r0, 0xde00
/* 80482BF0  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80482BF4  38 7F 00 08 */	addi r3, r31, 8
/* 80482BF8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80482BFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80482C00  A8 7C 03 88 */	lha r3, 0x388(r28)
/* 80482C04  4B FE D7 89 */	bl aMR_IconNo2Gfx1
/* 80482C08  90 7F 00 04 */	stw r3, 4(r31)
/* 80482C0C  3C 00 DE 00 */	lis r0, 0xde00
/* 80482C10  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80482C14  38 7F 00 08 */	addi r3, r31, 8
/* 80482C18  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80482C1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80482C20  A8 7C 03 88 */	lha r3, 0x388(r28)
/* 80482C24  4B FE D7 99 */	bl aMR_IconNo2Gfx2
/* 80482C28  90 7F 00 04 */	stw r3, 4(r31)
/* 80482C2C  38 00 00 00 */	li r0, 0
/* 80482C30  90 1C 03 58 */	stw r0, 0x358(r28)
lbl_80482C34:
/* 80482C34  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80482C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80482C3C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80482C40  4B C1 82 DD */	bl func_8009AF1C
/* 80482C44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80482C48  7C 08 03 A6 */	mtlr r0
/* 80482C4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80482C50  4E 80 00 20 */	blr 

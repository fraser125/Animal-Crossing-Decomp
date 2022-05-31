lbl_8042E1D8:
/* 8042E1D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042E1DC  7C 08 02 A6 */	mflr r0
/* 8042E1E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042E1E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8042E1E8  4B C6 CC E5 */	bl func_8009AECC
/* 8042E1EC  7C 7C 1B 78 */	mr r28, r3
/* 8042E1F0  7C 9D 23 78 */	mr r29, r4
/* 8042E1F4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8042E1F8  AB E3 00 20 */	lha r31, 0x20(r3)
/* 8042E1FC  28 00 00 00 */	cmplwi r0, 0
/* 8042E200  41 82 01 20 */	beq lbl_8042E320
/* 8042E204  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042E208  4B FB 6F 01 */	bl _texture_z_light_fog_prim
/* 8042E20C  83 DD 00 00 */	lwz r30, 0(r29)
/* 8042E210  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8042E214  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 8042E218  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8042E21C  38 64 00 08 */	addi r3, r4, 8
/* 8042E220  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E224  90 04 00 00 */	stw r0, 0(r4)
/* 8042E228  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8042E22C  38 03 00 20 */	addi r0, r3, 0x20
/* 8042E230  90 04 00 04 */	stw r0, 4(r4)
/* 8042E234  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8042E238  28 00 00 00 */	cmplwi r0, 0
/* 8042E23C  41 82 00 24 */	beq lbl_8042E260
/* 8042E240  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8042E244  38 05 00 24 */	addi r0, r5, 0x24
/* 8042E248  38 64 00 08 */	addi r3, r4, 8
/* 8042E24C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E250  90 04 00 00 */	stw r0, 0(r4)
/* 8042E254  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8042E258  90 04 00 04 */	stw r0, 4(r4)
/* 8042E25C  48 00 00 28 */	b lbl_8042E284
lbl_8042E260:
/* 8042E260  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 8042E264  38 05 00 24 */	addi r0, r5, 0x24
/* 8042E268  38 7B 00 08 */	addi r3, r27, 8
/* 8042E26C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E270  90 1B 00 00 */	stw r0, 0(r27)
/* 8042E274  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8042E278  88 63 00 10 */	lbz r3, 0x10(r3)
/* 8042E27C  4B F9 B9 41 */	bl mNW_PaletteIdx2Palette
/* 8042E280  90 7B 00 04 */	stw r3, 4(r27)
lbl_8042E284:
/* 8042E284  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8042E288  38 60 00 00 */	li r3, 0
/* 8042E28C  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8042E290  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 8042E294  4B FD E0 6D */	bl Matrix_translate
/* 8042E298  7F E3 FB 78 */	mr r3, r31
/* 8042E29C  38 80 00 01 */	li r4, 1
/* 8042E2A0  4B FD E3 BD */	bl Matrix_RotateY
/* 8042E2A4  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8042E2A8  38 60 00 01 */	li r3, 1
/* 8042E2AC  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8042E2B0  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 8042E2B4  FC 20 08 50 */	fneg f1, f1
/* 8042E2B8  FC 40 10 50 */	fneg f2, f2
/* 8042E2BC  FC 60 00 50 */	fneg f3, f0
/* 8042E2C0  4B FD E0 41 */	bl Matrix_translate
/* 8042E2C4  3C 80 80 64 */	lis r4, lit_521@ha /* 0x80644164@ha */
/* 8042E2C8  38 60 00 01 */	li r3, 1
/* 8042E2CC  C0 24 41 64 */	lfs f1, lit_521@l(r4)  /* 0x80644164@l */
/* 8042E2D0  FC 40 08 90 */	fmr f2, f1
/* 8042E2D4  FC 60 08 90 */	fmr f3, f1
/* 8042E2D8  4B FD E1 15 */	bl Matrix_scale
/* 8042E2DC  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 8042E2E0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042E2E4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042E2E8  38 7C 00 08 */	addi r3, r28, 8
/* 8042E2EC  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E2F0  90 1C 00 00 */	stw r0, 0(r28)
/* 8042E2F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042E2F8  4B FD F0 DD */	bl _Matrix_to_Mtx_new
/* 8042E2FC  90 7C 00 04 */	stw r3, 4(r28)
/* 8042E300  3C 60 80 8F */	lis r3, obj_misin_cloth_model@ha /* 0x808F5FA0@ha */
/* 8042E304  3C 80 DE 00 */	lis r4, 0xde00
/* 8042E308  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8042E30C  38 03 5F A0 */	addi r0, r3, obj_misin_cloth_model@l /* 0x808F5FA0@l */
/* 8042E310  38 65 00 08 */	addi r3, r5, 8
/* 8042E314  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E318  90 85 00 00 */	stw r4, 0(r5)
/* 8042E31C  90 05 00 04 */	stw r0, 4(r5)
lbl_8042E320:
/* 8042E320  39 61 00 20 */	addi r11, r1, 0x20
/* 8042E324  4B C6 CB F5 */	bl func_8009AF18
/* 8042E328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042E32C  7C 08 03 A6 */	mtlr r0
/* 8042E330  38 21 00 20 */	addi r1, r1, 0x20
/* 8042E334  4E 80 00 20 */	blr 

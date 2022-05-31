lbl_803821E8:
/* 803821E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803821EC  7C 08 02 A6 */	mflr r0
/* 803821F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803821F4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803821F8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803821FC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80382200  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80382204  39 61 00 20 */	addi r11, r1, 0x20
/* 80382208  4B D1 8C CD */	bl func_8009AED4
/* 8038220C  7C 7D 1B 78 */	mr r29, r3
/* 80382210  83 E3 1C 00 */	lwz r31, 0x1c00(r3)
/* 80382214  83 C3 1C 04 */	lwz r30, 0x1c04(r3)
/* 80382218  28 1F 00 00 */	cmplwi r31, 0
/* 8038221C  40 82 00 0C */	bne lbl_80382228
/* 80382220  28 1E 00 00 */	cmplwi r30, 0
/* 80382224  41 82 00 84 */	beq lbl_803822A8
lbl_80382228:
/* 80382228  28 1F 00 00 */	cmplwi r31, 0
/* 8038222C  C3 DD 1C 08 */	lfs f30, 0x1c08(r29)
/* 80382230  41 82 00 0C */	beq lbl_8038223C
/* 80382234  28 1E 00 00 */	cmplwi r30, 0
/* 80382238  40 82 00 10 */	bne lbl_80382248
lbl_8038223C:
/* 8038223C  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 80382240  C3 E3 13 54 */	lfs f31, lit_474@l(r3)  /* 0x80641354@l */
/* 80382244  48 00 00 14 */	b lbl_80382258
lbl_80382248:
/* 80382248  38 7F 00 28 */	addi r3, r31, 0x28
/* 8038224C  38 9E 00 28 */	addi r4, r30, 0x28
/* 80382250  48 03 8D 85 */	bl search_position_distance
/* 80382254  FF E0 08 90 */	fmr f31, f1
lbl_80382258:
/* 80382258  FC 20 F8 90 */	fmr f1, f31
/* 8038225C  7F A3 EB 78 */	mr r3, r29
/* 80382260  FC 40 F0 90 */	fmr f2, f30
/* 80382264  7F E4 FB 78 */	mr r4, r31
/* 80382268  7F C5 F3 78 */	mr r5, r30
/* 8038226C  4B FF FE 35 */	bl Camera2_Cust_Talk_ChangeCameraCenterPos_BetweenSpeakerToListener
/* 80382270  FC 20 F8 90 */	fmr f1, f31
/* 80382274  7F A3 EB 78 */	mr r3, r29
/* 80382278  7F E4 FB 78 */	mr r4, r31
/* 8038227C  7F C5 F3 78 */	mr r5, r30
/* 80382280  38 C1 00 08 */	addi r6, r1, 8
/* 80382284  4B FF FE CD */	bl Camera2_Cust_Talk_SetAngleDist
/* 80382288  7F A3 EB 78 */	mr r3, r29
/* 8038228C  38 81 00 08 */	addi r4, r1, 8
/* 80382290  38 A0 00 00 */	li r5, 0
/* 80382294  4B FF BB 41 */	bl Camera2_MoveDirectionAngleXYZ
/* 80382298  7F A3 EB 78 */	mr r3, r29
/* 8038229C  4B FF B9 F9 */	bl Camera2_SetEyePos_fromCenterPos
/* 803822A0  7F A3 EB 78 */	mr r3, r29
/* 803822A4  4B FF BC 99 */	bl Camera2_SetView
lbl_803822A8:
/* 803822A8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803822AC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803822B0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803822B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803822B8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803822BC  4B D1 8C 65 */	bl func_8009AF20
/* 803822C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803822C4  7C 08 03 A6 */	mtlr r0
/* 803822C8  38 21 00 40 */	addi r1, r1, 0x40
/* 803822CC  4E 80 00 20 */	blr 

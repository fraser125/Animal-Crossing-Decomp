lbl_80399030:
/* 80399030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399034  7C 08 02 A6 */	mflr r0
/* 80399038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039903C  48 02 66 6D */	bl func_803BF6A8
/* 80399040  48 02 67 99 */	bl mMsg_Check_main_hide
/* 80399044  2C 03 00 00 */	cmpwi r3, 0
/* 80399048  40 82 00 1C */	bne lbl_80399064
/* 8039904C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399050  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399054  80 63 00 00 */	lwz r3, 0(r3)
/* 80399058  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8039905C  2C 00 00 09 */	cmpwi r0, 9
/* 80399060  40 82 00 68 */	bne lbl_803990C8
lbl_80399064:
/* 80399064  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399068  80 A3 1C BC */	lwz r5, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 8039906C  80 05 03 10 */	lwz r0, 0x310(r5)
/* 80399070  2C 00 00 00 */	cmpwi r0, 0
/* 80399074  41 82 00 1C */	beq lbl_80399090
/* 80399078  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8039907C  80 85 03 18 */	lwz r4, 0x318(r5)
/* 80399080  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399084  80 A5 03 14 */	lwz r5, 0x314(r5)
/* 80399088  80 63 00 00 */	lwz r3, 0(r3)
/* 8039908C  48 04 11 E5 */	bl mPlib_request_main_talk_end_type1
lbl_80399090:
/* 80399090  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399094  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399098  80 63 00 00 */	lwz r3, 0(r3)
/* 8039909C  88 03 03 20 */	lbz r0, 0x320(r3)
/* 803990A0  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 803990A4  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 803990A8  4B FF F5 75 */	bl mDemo_Copy_change_player_destiny
/* 803990AC  48 00 BC 21 */	bl mFI_GetFieldId
/* 803990B0  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803990B4  2C 00 50 00 */	cmpwi r0, 0x5000
/* 803990B8  41 82 00 08 */	beq lbl_803990C0
/* 803990BC  4B FE 36 95 */	bl mBGMPsComp_volume_talk_end
lbl_803990C0:
/* 803990C0  38 60 00 01 */	li r3, 1
/* 803990C4  48 00 00 08 */	b lbl_803990CC
lbl_803990C8:
/* 803990C8  38 60 00 00 */	li r3, 0
lbl_803990CC:
/* 803990CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803990D0  7C 08 03 A6 */	mtlr r0
/* 803990D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803990D8  4E 80 00 20 */	blr 

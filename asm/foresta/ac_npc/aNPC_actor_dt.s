lbl_80539218:
/* 80539218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053921C  7C 08 02 A6 */	mflr r0
/* 80539220  90 01 00 24 */	stw r0, 0x24(r1)
/* 80539224  39 61 00 20 */	addi r11, r1, 0x20
/* 80539228  4B B6 1C A9 */	bl func_8009AED0
/* 8053922C  3C A0 81 1D */	lis r5, data_811D3978@ha /* 0x811D3978@ha */
/* 80539230  7C 7C 1B 78 */	mr r28, r3
/* 80539234  83 E5 39 78 */	lwz r31, data_811D3978@l(r5)  /* 0x811D3978@l */
/* 80539238  7C 9D 23 78 */	mr r29, r4
/* 8053923C  83 DC 08 F0 */	lwz r30, 0x8f0(r28)
/* 80539240  7F 84 E3 78 */	mr r4, r28
/* 80539244  7F E3 FB 78 */	mr r3, r31
/* 80539248  48 00 16 D5 */	bl aNPC_reset_out_of_door_flg
/* 8053924C  7F E3 FB 78 */	mr r3, r31
/* 80539250  7F 84 E3 78 */	mr r4, r28
/* 80539254  48 00 17 49 */	bl aNPC_reset_umb_open_flg
/* 80539258  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053925C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80539260  3C 63 00 02 */	addis r3, r3, 2
/* 80539264  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 80539268  28 03 00 00 */	cmplwi r3, 0
/* 8053926C  41 82 00 14 */	beq lbl_80539280
/* 80539270  81 83 00 44 */	lwz r12, 0x44(r3)
/* 80539274  A0 7C 00 06 */	lhz r3, 6(r28)
/* 80539278  7D 89 03 A6 */	mtctr r12
/* 8053927C  4E 80 04 21 */	bctrl 
lbl_80539280:
/* 80539280  80 7C 08 A0 */	lwz r3, 0x8a0(r28)
/* 80539284  28 03 00 00 */	cmplwi r3, 0
/* 80539288  41 82 00 10 */	beq lbl_80539298
/* 8053928C  4B E3 B1 B5 */	bl Actor_delete
/* 80539290  38 00 00 00 */	li r0, 0
/* 80539294  90 1C 08 A0 */	stw r0, 0x8a0(r28)
lbl_80539298:
/* 80539298  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 8053929C  28 03 00 00 */	cmplwi r3, 0
/* 805392A0  41 82 00 10 */	beq lbl_805392B0
/* 805392A4  4B E3 B1 9D */	bl Actor_delete
/* 805392A8  38 00 00 00 */	li r0, 0
/* 805392AC  90 1C 09 84 */	stw r0, 0x984(r28)
lbl_805392B0:
/* 805392B0  28 1E 00 00 */	cmplwi r30, 0
/* 805392B4  41 82 00 18 */	beq lbl_805392CC
/* 805392B8  88 1E 00 02 */	lbz r0, 2(r30)
/* 805392BC  28 00 00 04 */	cmplwi r0, 4
/* 805392C0  40 82 00 0C */	bne lbl_805392CC
/* 805392C4  38 00 00 00 */	li r0, 0
/* 805392C8  90 1E 08 F0 */	stw r0, 0x8f0(r30)
lbl_805392CC:
/* 805392CC  80 1C 01 5C */	lwz r0, 0x15c(r28)
/* 805392D0  28 00 00 00 */	cmplwi r0, 0
/* 805392D4  40 82 00 28 */	bne lbl_805392FC
/* 805392D8  38 7C 01 A8 */	addi r3, r28, 0x1a8
/* 805392DC  4B E3 78 15 */	bl cKF_SkeletonInfo_R_dt
/* 805392E0  38 7C 03 64 */	addi r3, r28, 0x364
/* 805392E4  4B E3 78 0D */	bl cKF_SkeletonInfo_R_dt
/* 805392E8  38 7C 05 20 */	addi r3, r28, 0x520
/* 805392EC  4B E3 78 05 */	bl cKF_SkeletonInfo_R_dt
/* 805392F0  7F A3 EB 78 */	mr r3, r29
/* 805392F4  38 9C 09 38 */	addi r4, r28, 0x938
/* 805392F8  4B E5 B3 71 */	bl ClObjPipe_dt
lbl_805392FC:
/* 805392FC  80 7C 01 88 */	lwz r3, 0x188(r28)
/* 80539300  28 03 00 00 */	cmplwi r3, 0
/* 80539304  41 82 00 08 */	beq lbl_8053930C
/* 80539308  4B E9 58 5D */	bl mNpc_UnRegistEventNpc
lbl_8053930C:
/* 8053930C  80 7C 01 8C */	lwz r3, 0x18c(r28)
/* 80539310  28 03 00 00 */	cmplwi r3, 0
/* 80539314  41 82 00 08 */	beq lbl_8053931C
/* 80539318  4B E9 5A 89 */	bl mNpc_UnRegistMaskNpc
lbl_8053931C:
/* 8053931C  39 61 00 20 */	addi r11, r1, 0x20
/* 80539320  4B B6 1B FD */	bl func_8009AF1C
/* 80539324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80539328  7C 08 03 A6 */	mtlr r0
/* 8053932C  38 21 00 20 */	addi r1, r1, 0x20
/* 80539330  4E 80 00 20 */	blr 

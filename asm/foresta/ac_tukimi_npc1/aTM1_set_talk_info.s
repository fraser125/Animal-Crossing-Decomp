lbl_8058E3C0:
/* 8058E3C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058E3C4  7C 08 02 A6 */	mflr r0
/* 8058E3C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058E3CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8058E3D0  4B B0 CA FD */	bl func_8009AECC
/* 8058E3D4  7C 7B 1B 78 */	mr r27, r3
/* 8058E3D8  4B E3 12 D1 */	bl func_803BF6A8
/* 8058E3DC  7C 60 1B 78 */	mr r0, r3
/* 8058E3E0  7F 63 DB 78 */	mr r3, r27
/* 8058E3E4  7C 1D 03 78 */	mr r29, r0
/* 8058E3E8  4B E4 3B 19 */	bl mNpc_GetNpcLooks
/* 8058E3EC  3C 80 80 6C */	lis r4, msg_base_553@ha /* 0x806C254C@ha */
/* 8058E3F0  83 FB 09 94 */	lwz r31, 0x994(r27)
/* 8058E3F4  38 04 25 4C */	addi r0, r4, msg_base_553@l /* 0x806C254C@l */
/* 8058E3F8  7C 7E 1B 78 */	mr r30, r3
/* 8058E3FC  7C 1C 03 78 */	mr r28, r0
/* 8058E400  3B 60 00 00 */	li r27, 0
lbl_8058E404:
/* 8058E404  3C 7B 00 01 */	addis r3, r27, 1
/* 8058E408  38 03 D0 3F */	addi r0, r3, -12225
/* 8058E40C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8058E410  4B E4 07 D9 */	bl mNpc_GetSameEventNpc
/* 8058E414  28 03 00 00 */	cmplwi r3, 0
/* 8058E418  41 82 00 44 */	beq lbl_8058E45C
/* 8058E41C  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8058E420  A0 83 00 00 */	lhz r4, 0(r3)
/* 8058E424  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 8058E428  38 A0 00 04 */	li r5, 4
/* 8058E42C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058E430  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 8058E434  4B DE 79 0D */	bl Actor_info_fgName_search
/* 8058E438  7C 60 1B 78 */	mr r0, r3
/* 8058E43C  38 61 00 08 */	addi r3, r1, 8
/* 8058E440  7C 04 03 78 */	mr r4, r0
/* 8058E444  4B E4 37 4D */	bl mNpc_GetNpcWorldName
/* 8058E448  7F A3 EB 78 */	mr r3, r29
/* 8058E44C  38 9B 00 01 */	addi r4, r27, 1
/* 8058E450  38 A1 00 08 */	addi r5, r1, 8
/* 8058E454  38 C0 00 08 */	li r6, 8
/* 8058E458  4B E3 17 FD */	bl mMsg_Set_free_str
lbl_8058E45C:
/* 8058E45C  3B 7B 00 01 */	addi r27, r27, 1
/* 8058E460  2C 1B 00 05 */	cmpwi r27, 5
/* 8058E464  41 80 FF A0 */	blt lbl_8058E404
/* 8058E468  38 60 00 25 */	li r3, 0x25
/* 8058E46C  38 80 00 01 */	li r4, 1
/* 8058E470  4B E0 F6 91 */	bl mEv_check_status
/* 8058E474  2C 03 00 01 */	cmpwi r3, 1
/* 8058E478  40 82 00 10 */	bne lbl_8058E488
/* 8058E47C  3C 60 80 6C */	lis r3, msg_base2_554@ha /* 0x806C2564@ha */
/* 8058E480  38 03 25 64 */	addi r0, r3, msg_base2_554@l /* 0x806C2564@l */
/* 8058E484  7C 1C 03 78 */	mr r28, r0
lbl_8058E488:
/* 8058E488  4B AC E8 6D */	bl fqrand
/* 8058E48C  3C 60 80 65 */	lis r3, lit_565@ha /* 0x80649BDC@ha */
/* 8058E490  57 C0 10 3A */	slwi r0, r30, 2
/* 8058E494  38 83 9B DC */	addi r4, r3, lit_565@l /* 0x80649BDC@l */
/* 8058E498  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8058E49C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8058E4A0  1C 1F 00 03 */	mulli r0, r31, 3
/* 8058E4A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058E4A8  FC 00 00 1E */	fctiwz f0, f0
/* 8058E4AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8058E4B0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8058E4B4  7C 04 02 14 */	add r0, r4, r0
/* 8058E4B8  7C 63 02 14 */	add r3, r3, r0
/* 8058E4BC  4B E0 A0 59 */	bl mDemo_Set_msg_num
/* 8058E4C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8058E4C4  4B B0 CA 55 */	bl func_8009AF18
/* 8058E4C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058E4CC  7C 08 03 A6 */	mtlr r0
/* 8058E4D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8058E4D4  4E 80 00 20 */	blr 

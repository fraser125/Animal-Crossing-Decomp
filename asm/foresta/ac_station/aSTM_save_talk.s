lbl_805BC28C:
/* 805BC28C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BC290  7C 08 02 A6 */	mflr r0
/* 805BC294  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BC298  39 61 00 20 */	addi r11, r1, 0x20
/* 805BC29C  4B AD EC 35 */	bl func_8009AED0
/* 805BC2A0  7C 7E 1B 78 */	mr r30, r3
/* 805BC2A4  4B E0 34 05 */	bl func_803BF6A8
/* 805BC2A8  88 1E 09 A9 */	lbz r0, 0x9a9(r30)
/* 805BC2AC  7C 7F 1B 78 */	mr r31, r3
/* 805BC2B0  28 00 00 01 */	cmplwi r0, 1
/* 805BC2B4  40 82 00 14 */	bne lbl_805BC2C8
/* 805BC2B8  38 61 00 08 */	addi r3, r1, 8
/* 805BC2BC  4B E4 5D 4D */	bl mCD_SaveStation_NextLand_bg
/* 805BC2C0  7C 7D 1B 78 */	mr r29, r3
/* 805BC2C4  48 00 00 10 */	b lbl_805BC2D4
lbl_805BC2C8:
/* 805BC2C8  38 61 00 08 */	addi r3, r1, 8
/* 805BC2CC  4B E4 6C FD */	bl mCD_SaveStation_Passport_bg
/* 805BC2D0  7C 7D 1B 78 */	mr r29, r3
lbl_805BC2D4:
/* 805BC2D4  2C 1D 00 19 */	cmpwi r29, 0x19
/* 805BC2D8  41 82 01 EC */	beq lbl_805BC4C4
/* 805BC2DC  40 80 00 6C */	bge lbl_805BC348
/* 805BC2E0  2C 1D 00 00 */	cmpwi r29, 0
/* 805BC2E4  41 82 00 08 */	beq lbl_805BC2EC
/* 805BC2E8  48 00 00 60 */	b lbl_805BC348
lbl_805BC2EC:
/* 805BC2EC  7F E3 FB 78 */	mr r3, r31
/* 805BC2F0  4B E0 4A 5D */	bl mMsg_Unset_LockContinue
/* 805BC2F4  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 805BC2F8  3C 60 80 6C */	lis r3, msg_no_657@ha /* 0x806C6A50@ha */
/* 805BC2FC  38 83 6A 50 */	addi r4, r3, msg_no_657@l /* 0x806C6A50@l */
/* 805BC300  7F E3 FB 78 */	mr r3, r31
/* 805BC304  7C 00 00 D0 */	neg r0, r0
/* 805BC308  7C 05 00 34 */	cntlzw r5, r0
/* 805BC30C  54 A0 E8 FA */	rlwinm r0, r5, 0x1d, 3, 0x1d
/* 805BC310  7C 84 00 2E */	lwzx r4, r4, r0
/* 805BC314  54 BD D9 7E */	srwi r29, r5, 5
/* 805BC318  4B E0 3C AD */	bl mMsg_Set_continue_msg_num
/* 805BC31C  3C 80 80 6C */	lis r4, next_think_idx@ha /* 0x806C6A58@ha */
/* 805BC320  7F C3 F3 78 */	mr r3, r30
/* 805BC324  38 A4 6A 58 */	addi r5, r4, next_think_idx@l /* 0x806C6A58@l */
/* 805BC328  38 80 00 08 */	li r4, 8
/* 805BC32C  7C 05 E8 AE */	lbzx r0, r5, r29
/* 805BC330  98 1E 09 A1 */	stb r0, 0x9a1(r30)
/* 805BC334  48 00 05 C9 */	bl aSTC_clip_change_talk_proc
/* 805BC338  4B DD EA 99 */	bl mEv_SetGateway
/* 805BC33C  38 60 00 01 */	li r3, 1
/* 805BC340  4B DD C4 79 */	bl mDemo_Set_talk_return_demo_wait
/* 805BC344  48 00 01 80 */	b lbl_805BC4C4
lbl_805BC348:
/* 805BC348  80 01 00 08 */	lwz r0, 8(r1)
/* 805BC34C  2C 00 00 00 */	cmpwi r0, 0
/* 805BC350  41 82 00 0C */	beq lbl_805BC35C
/* 805BC354  2C 00 00 01 */	cmpwi r0, 1
/* 805BC358  40 82 00 2C */	bne lbl_805BC384
lbl_805BC35C:
/* 805BC35C  7C 00 00 34 */	cntlzw r0, r0
/* 805BC360  38 80 00 03 */	li r4, 3
/* 805BC364  54 03 D9 7E */	srwi r3, r0, 5
/* 805BC368  4B FF F9 CD */	bl aSTM_set_slot_name
/* 805BC36C  80 61 00 08 */	lwz r3, 8(r1)
/* 805BC370  38 80 00 05 */	li r4, 5
/* 805BC374  4B FF F9 C1 */	bl aSTM_set_slot_name
/* 805BC378  80 61 00 08 */	lwz r3, 8(r1)
/* 805BC37C  38 80 00 04 */	li r4, 4
/* 805BC380  4B FF F9 B5 */	bl aSTM_set_slot_name
lbl_805BC384:
/* 805BC384  7F C3 F3 78 */	mr r3, r30
/* 805BC388  38 80 00 09 */	li r4, 9
/* 805BC38C  48 00 05 71 */	bl aSTC_clip_change_talk_proc
/* 805BC390  28 1D 00 17 */	cmplwi r29, 0x17
/* 805BC394  41 81 00 AC */	bgt lbl_805BC440
/* 805BC398  3C 60 80 6C */	lis r3, lit_695@ha /* 0x806C6A5C@ha */
/* 805BC39C  57 A0 10 3A */	slwi r0, r29, 2
/* 805BC3A0  38 63 6A 5C */	addi r3, r3, lit_695@l /* 0x806C6A5C@l */
/* 805BC3A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BC3A8  7C 09 03 A6 */	mtctr r0
/* 805BC3AC  4E 80 04 20 */	bctr 
lbl_805BC3B0:
/* 805BC3B0  7F C3 F3 78 */	mr r3, r30
/* 805BC3B4  3B 80 09 56 */	li r28, 0x956
/* 805BC3B8  38 80 00 0A */	li r4, 0xa
/* 805BC3BC  48 00 05 41 */	bl aSTC_clip_change_talk_proc
/* 805BC3C0  9B BE 09 AB */	stb r29, 0x9ab(r30)
/* 805BC3C4  48 00 00 80 */	b lbl_805BC444
lbl_805BC3C8:
/* 805BC3C8  7F C3 F3 78 */	mr r3, r30
/* 805BC3CC  3B 80 09 4E */	li r28, 0x94e
/* 805BC3D0  38 80 00 0A */	li r4, 0xa
/* 805BC3D4  48 00 05 29 */	bl aSTC_clip_change_talk_proc
/* 805BC3D8  9B BE 09 AB */	stb r29, 0x9ab(r30)
/* 805BC3DC  48 00 00 68 */	b lbl_805BC444
lbl_805BC3E0:
/* 805BC3E0  3B 80 09 4C */	li r28, 0x94c
/* 805BC3E4  48 00 00 60 */	b lbl_805BC444
lbl_805BC3E8:
/* 805BC3E8  3B 80 09 4D */	li r28, 0x94d
/* 805BC3EC  48 00 00 58 */	b lbl_805BC444
lbl_805BC3F0:
/* 805BC3F0  3B 80 09 46 */	li r28, 0x946
/* 805BC3F4  48 00 00 50 */	b lbl_805BC444
lbl_805BC3F8:
/* 805BC3F8  3B 80 09 47 */	li r28, 0x947
/* 805BC3FC  48 00 00 48 */	b lbl_805BC444
lbl_805BC400:
/* 805BC400  3B 80 09 62 */	li r28, 0x962
/* 805BC404  48 00 00 40 */	b lbl_805BC444
lbl_805BC408:
/* 805BC408  3B 80 09 48 */	li r28, 0x948
/* 805BC40C  48 00 00 38 */	b lbl_805BC444
lbl_805BC410:
/* 805BC410  3B 80 09 67 */	li r28, 0x967
/* 805BC414  48 00 00 30 */	b lbl_805BC444
lbl_805BC418:
/* 805BC418  3B 80 09 61 */	li r28, 0x961
/* 805BC41C  48 00 00 28 */	b lbl_805BC444
lbl_805BC420:
/* 805BC420  3B 80 09 68 */	li r28, 0x968
/* 805BC424  48 00 00 20 */	b lbl_805BC444
lbl_805BC428:
/* 805BC428  3B 80 09 69 */	li r28, 0x969
/* 805BC42C  48 00 00 18 */	b lbl_805BC444
lbl_805BC430:
/* 805BC430  3B 80 09 6A */	li r28, 0x96a
/* 805BC434  48 00 00 10 */	b lbl_805BC444
lbl_805BC438:
/* 805BC438  3B 80 09 6B */	li r28, 0x96b
/* 805BC43C  48 00 00 08 */	b lbl_805BC444
lbl_805BC440:
/* 805BC440  3B 80 09 46 */	li r28, 0x946
lbl_805BC444:
/* 805BC444  7F E3 FB 78 */	mr r3, r31
/* 805BC448  4B E0 49 05 */	bl mMsg_Unset_LockContinue
/* 805BC44C  7F E3 FB 78 */	mr r3, r31
/* 805BC450  7F 84 E3 78 */	mr r4, r28
/* 805BC454  4B E0 3B 71 */	bl mMsg_Set_continue_msg_num
/* 805BC458  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BC45C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BC460  3C 63 00 02 */	addis r3, r3, 2
/* 805BC464  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 805BC468  28 00 00 04 */	cmplwi r0, 4
/* 805BC46C  40 80 00 10 */	bge lbl_805BC47C
/* 805BC470  38 00 00 08 */	li r0, 8
/* 805BC474  98 1E 09 A1 */	stb r0, 0x9a1(r30)
/* 805BC478  48 00 00 0C */	b lbl_805BC484
lbl_805BC47C:
/* 805BC47C  38 00 00 09 */	li r0, 9
/* 805BC480  98 1E 09 A1 */	stb r0, 0x9a1(r30)
lbl_805BC484:
/* 805BC484  7F E3 FB 78 */	mr r3, r31
/* 805BC488  4B E0 48 A1 */	bl mMsg_Set_ForceNext
/* 805BC48C  38 60 01 68 */	li r3, 0x168
/* 805BC490  4B DB F6 F5 */	bl mBGMPsComp_make_ps_quiet
/* 805BC494  88 7E 09 A5 */	lbz r3, 0x9a5(r30)
/* 805BC498  38 80 01 68 */	li r4, 0x168
/* 805BC49C  4B DB FE 89 */	bl mBGMPsComp_delete_ps_demo
/* 805BC4A0  38 80 00 00 */	li r4, 0
/* 805BC4A4  98 9E 09 A5 */	stb r4, 0x9a5(r30)
/* 805BC4A8  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 805BC4AC  28 00 00 00 */	cmplwi r0, 0
/* 805BC4B0  40 82 00 14 */	bne lbl_805BC4C4
/* 805BC4B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BC4B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BC4BC  3C 63 00 03 */	addis r3, r3, 3
/* 805BC4C0  98 83 88 3E */	stb r4, -0x77c2(r3)
lbl_805BC4C4:
/* 805BC4C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805BC4C8  4B AD EA 55 */	bl func_8009AF1C
/* 805BC4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BC4D0  7C 08 03 A6 */	mtlr r0
/* 805BC4D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805BC4D8  4E 80 00 20 */	blr 

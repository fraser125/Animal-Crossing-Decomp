lbl_804158E4:
/* 804158E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804158E8  7C 08 02 A6 */	mflr r0
/* 804158EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804158F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804158F4  93 C1 00 08 */	stw r30, 8(r1)
/* 804158F8  7C 7E 1B 78 */	mr r30, r3
/* 804158FC  4B FA 9D AD */	bl func_803BF6A8
/* 80415900  38 80 00 01 */	li r4, 1
/* 80415904  4B FA CD 5D */	bl mMsg_sound_unset_voice_silent
/* 80415908  3C 60 80 68 */	lis r3, sing_2nd_part_bgm_no@ha /* 0x80681710@ha */
/* 8041590C  88 1E 01 B2 */	lbz r0, 0x1b2(r30)
/* 80415910  38 63 17 10 */	addi r3, r3, sing_2nd_part_bgm_no@l /* 0x80681710@l */
/* 80415914  38 80 01 68 */	li r4, 0x168
/* 80415918  7F E3 00 AE */	lbzx r31, r3, r0
/* 8041591C  7F E3 FB 78 */	mr r3, r31
/* 80415920  4B F6 63 E9 */	bl mBGMPsComp_make_ps_demo
/* 80415924  9B FE 01 B3 */	stb r31, 0x1b3(r30)
/* 80415928  3C 60 80 68 */	lis r3, sing_2nd_part_msg_base_no@ha /* 0x8068171C@ha */
/* 8041592C  38 63 17 1C */	addi r3, r3, sing_2nd_part_msg_base_no@l /* 0x8068171C@l */
/* 80415930  88 1E 01 B0 */	lbz r0, 0x1b0(r30)
/* 80415934  88 9E 01 B2 */	lbz r4, 0x1b2(r30)
/* 80415938  54 00 10 3A */	slwi r0, r0, 2
/* 8041593C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80415940  7F E4 02 14 */	add r31, r4, r0
/* 80415944  4B FA 9D 65 */	bl func_803BF6A8
/* 80415948  7F E4 FB 78 */	mr r4, r31
/* 8041594C  4B FA A6 79 */	bl mMsg_Set_continue_msg_num
/* 80415950  93 FE 01 B4 */	stw r31, 0x1b4(r30)
/* 80415954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041595C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415960  7C 08 03 A6 */	mtlr r0
/* 80415964  38 21 00 10 */	addi r1, r1, 0x10
/* 80415968  4E 80 00 20 */	blr 

lbl_804AA8EC:
/* 804AA8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA8F0  7C 08 02 A6 */	mflr r0
/* 804AA8F4  38 80 00 08 */	li r4, 8
/* 804AA8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA8FC  7C 60 1B 78 */	mr r0, r3
/* 804AA900  38 60 00 0F */	li r3, 0xf
/* 804AA904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AA908  7C 1F 03 78 */	mr r31, r0
/* 804AA90C  4B EF 34 C1 */	bl mEv_get_save_area
/* 804AA910  28 03 00 00 */	cmplwi r3, 0
/* 804AA914  40 82 00 1C */	bne lbl_804AA930
/* 804AA918  38 60 00 0F */	li r3, 0xf
/* 804AA91C  38 80 00 08 */	li r4, 8
/* 804AA920  4B EF 33 05 */	bl mEv_reserve_save_area
/* 804AA924  38 00 00 00 */	li r0, 0
/* 804AA928  98 03 00 00 */	stb r0, 0(r3)
/* 804AA92C  B0 03 00 02 */	sth r0, 2(r3)
lbl_804AA930:
/* 804AA930  3C 80 80 4B */	lis r4, aTKC_clip_next_run@ha /* 0x804AB75C@ha */
/* 804AA934  3C 60 80 4B */	lis r3, aTKC_clip_get_angle@ha /* 0x804ABA54@ha */
/* 804AA938  38 04 B7 5C */	addi r0, r4, aTKC_clip_next_run@l /* 0x804AB75C@l */
/* 804AA93C  3C A0 80 4B */	lis r5, aTKC_clip_run_proc@ha /* 0x804ABAE4@ha */
/* 804AA940  90 1F 01 74 */	stw r0, 0x174(r31)
/* 804AA944  38 03 BA 54 */	addi r0, r3, aTKC_clip_get_angle@l /* 0x804ABA54@l */
/* 804AA948  3C 80 80 4B */	lis r4, aTKC_clip_run_check@ha /* 0x804ABB78@ha */
/* 804AA94C  3C 60 80 4B */	lis r3, aTKC_clip_top_check@ha /* 0x804ABC4C@ha */
/* 804AA950  90 1F 01 78 */	stw r0, 0x178(r31)
/* 804AA954  38 05 BA E4 */	addi r0, r5, aTKC_clip_run_proc@l /* 0x804ABAE4@l */
/* 804AA958  3D 00 80 4B */	lis r8, aTKC_clip_goal_check@ha /* 0x804ABD00@ha */
/* 804AA95C  3C E0 80 4B */	lis r7, aTKC_clip_npc1_think_init@ha /* 0x804AB728@ha */
/* 804AA960  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 804AA964  38 04 BB 78 */	addi r0, r4, aTKC_clip_run_check@l /* 0x804ABB78@l */
/* 804AA968  3C C0 80 4B */	lis r6, aTKC_clip_next_pos@ha /* 0x804ABD68@ha */
/* 804AA96C  3C A0 80 4B */	lis r5, aTKC_clip_next_warmup@ha /* 0x804ABDDC@ha */
/* 804AA970  90 1F 01 80 */	stw r0, 0x180(r31)
/* 804AA974  38 03 BC 4C */	addi r0, r3, aTKC_clip_top_check@l /* 0x804ABC4C@l */
/* 804AA978  3C 80 80 4B */	lis r4, aTKC_clip_set_talk_request@ha /* 0x804ABEC4@ha */
/* 804AA97C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AA980  90 1F 01 84 */	stw r0, 0x184(r31)
/* 804AA984  39 08 BD 00 */	addi r8, r8, aTKC_clip_goal_check@l /* 0x804ABD00@l */
/* 804AA988  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AA98C  38 07 B7 28 */	addi r0, r7, aTKC_clip_npc1_think_init@l /* 0x804AB728@l */
/* 804AA990  91 1F 01 88 */	stw r8, 0x188(r31)
/* 804AA994  39 06 BD 68 */	addi r8, r6, aTKC_clip_next_pos@l /* 0x804ABD68@l */
/* 804AA998  38 E5 BD DC */	addi r7, r5, aTKC_clip_next_warmup@l /* 0x804ABDDC@l */
/* 804AA99C  38 C4 BE C4 */	addi r6, r4, aTKC_clip_set_talk_request@l /* 0x804ABEC4@l */
/* 804AA9A0  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 804AA9A4  38 1F 01 74 */	addi r0, r31, 0x174
/* 804AA9A8  3C A3 00 02 */	addis r5, r3, 2
/* 804AA9AC  7F E3 FB 78 */	mr r3, r31
/* 804AA9B0  91 1F 01 90 */	stw r8, 0x190(r31)
/* 804AA9B4  38 80 00 00 */	li r4, 0
/* 804AA9B8  90 FF 01 94 */	stw r7, 0x194(r31)
/* 804AA9BC  90 DF 01 98 */	stw r6, 0x198(r31)
/* 804AA9C0  90 05 60 D8 */	stw r0, 0x60d8(r5)
/* 804AA9C4  48 00 05 79 */	bl aTKC_setupAction
/* 804AA9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA9CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA9D0  7C 08 03 A6 */	mtlr r0
/* 804AA9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA9D8  4E 80 00 20 */	blr 

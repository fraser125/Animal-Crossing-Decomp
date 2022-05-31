lbl_804E28E8:
/* 804E28E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E28EC  7C 08 02 A6 */	mflr r0
/* 804E28F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E28F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E28F8  4B BB 85 D5 */	bl func_8009AECC
/* 804E28FC  7C 9B 23 78 */	mr r27, r4
/* 804E2900  7C 7F 1B 78 */	mr r31, r3
/* 804E2904  80 1B 00 A0 */	lwz r0, 0xa0(r27)
/* 804E2908  3C 80 80 65 */	lis r4, lit_6542@ha /* 0x806480AC@ha */
/* 804E290C  38 64 80 AC */	addi r3, r4, lit_6542@l /* 0x806480AC@l */
/* 804E2910  83 9B 00 00 */	lwz r28, 0(r27)
/* 804E2914  54 04 45 EE */	rlwinm r4, r0, 8, 0x17, 0x17
/* 804E2918  C0 23 00 00 */	lfs f1, 0(r3)
/* 804E291C  3B A4 0A E8 */	addi r29, r4, 0xae8
/* 804E2920  3B DF 0A 18 */	addi r30, r31, 0xa18
/* 804E2924  7F BF EA 14 */	add r29, r31, r29
/* 804E2928  38 7F 0F 40 */	addi r3, r31, 0xf40
/* 804E292C  4B F2 AC 05 */	bl Matrix_Position_VecZ
/* 804E2930  4B F2 98 A5 */	bl Matrix_push
/* 804E2934  A8 7F 0F 50 */	lha r3, 0xf50(r31)
/* 804E2938  38 80 00 01 */	li r4, 1
/* 804E293C  4B F2 9E B5 */	bl Matrix_RotateZ
/* 804E2940  80 7B 00 00 */	lwz r3, 0(r27)
/* 804E2944  4B F2 AA 91 */	bl _Matrix_to_Mtx_new
/* 804E2948  28 03 00 00 */	cmplwi r3, 0
/* 804E294C  41 82 00 4C */	beq lbl_804E2998
/* 804E2950  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 804E2954  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380003@ha */
/* 804E2958  38 06 00 03 */	addi r0, r6, 0x0003 /* 0xDA380003@l */
/* 804E295C  3C A0 80 4E */	lis r5, Player_actor_Item_draw_rod_After@ha /* 0x804E2874@ha */
/* 804E2960  90 09 00 00 */	stw r0, 0(r9)
/* 804E2964  7D 28 4B 78 */	mr r8, r9
/* 804E2968  38 E5 28 74 */	addi r7, r5, Player_actor_Item_draw_rod_After@l /* 0x804E2874@l */
/* 804E296C  39 29 00 08 */	addi r9, r9, 8
/* 804E2970  90 68 00 04 */	stw r3, 4(r8)
/* 804E2974  7F C4 F3 78 */	mr r4, r30
/* 804E2978  7F A5 EB 78 */	mr r5, r29
/* 804E297C  7F 63 DB 78 */	mr r3, r27
/* 804E2980  91 3C 02 D0 */	stw r9, 0x2d0(r28)
/* 804E2984  7F E8 FB 78 */	mr r8, r31
/* 804E2988  38 C0 00 00 */	li r6, 0
/* 804E298C  4B E8 ED AD */	bl cKF_Si3_draw_R_SV
/* 804E2990  38 00 00 01 */	li r0, 1
/* 804E2994  90 1F 0F 4C */	stw r0, 0xf4c(r31)
lbl_804E2998:
/* 804E2998  38 00 00 00 */	li r0, 0
/* 804E299C  90 1F 11 70 */	stw r0, 0x1170(r31)
/* 804E29A0  4B F2 98 75 */	bl Matrix_pull
/* 804E29A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E29A8  4B BB 85 71 */	bl func_8009AF18
/* 804E29AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E29B0  7C 08 03 A6 */	mtlr r0
/* 804E29B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804E29B8  4E 80 00 20 */	blr 

lbl_805B28E0:
/* 805B28E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B28E4  7C 08 02 A6 */	mflr r0
/* 805B28E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B28EC  39 61 00 30 */	addi r11, r1, 0x30
/* 805B28F0  4B AE 85 D5 */	bl func_8009AEC4
/* 805B28F4  7C 7B 1B 78 */	mr r27, r3
/* 805B28F8  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805B28FC  83 C4 00 00 */	lwz r30, 0(r4)
/* 805B2900  7C 9C 23 78 */	mr r28, r4
/* 805B2904  88 63 00 01 */	lbz r3, 1(r3)
/* 805B2908  3C 80 80 6C */	lis r4, data_806C57A0@ha /* 0x806C57A0@ha */
/* 805B290C  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 805B2910  3B BB 01 78 */	addi r29, r27, 0x178
/* 805B2914  54 63 30 32 */	slwi r3, r3, 6
/* 805B2918  3B E4 57 A0 */	addi r31, r4, data_806C57A0@l /* 0x806C57A0@l */
/* 805B291C  7C 03 00 51 */	subf. r0, r3, r0
/* 805B2920  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 805B2924  7C 19 03 78 */	mr r25, r0
/* 805B2928  41 82 00 B8 */	beq lbl_805B29E0
/* 805B292C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B2930  38 60 00 50 */	li r3, 0x50
/* 805B2934  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B2938  3C 84 00 02 */	addis r4, r4, 2
/* 805B293C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B2940  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B2944  7D 89 03 A6 */	mtctr r12
/* 805B2948  4E 80 04 21 */	bctrl 
/* 805B294C  7C 7A 1B 78 */	mr r26, r3
/* 805B2950  7F C3 F3 78 */	mr r3, r30
/* 805B2954  4B E3 28 55 */	bl _texture_z_light_fog_prim_npc
/* 805B2958  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B295C  81 7E 02 D0 */	lwz r11, 0x2d0(r30)
/* 805B2960  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805B2964  39 5F 00 80 */	addi r10, r31, 0x80
/* 805B2968  90 0B 00 00 */	stw r0, 0(r11)
/* 805B296C  38 C3 00 24 */	addi r6, r3, 0x24
/* 805B2970  39 23 00 28 */	addi r9, r3, 0x28
/* 805B2974  38 1F 00 60 */	addi r0, r31, 0x60
/* 805B2978  93 4B 00 04 */	stw r26, 4(r11)
/* 805B297C  7F 83 E3 78 */	mr r3, r28
/* 805B2980  7F A4 EB 78 */	mr r4, r29
/* 805B2984  7F 25 CB 78 */	mr r5, r25
/* 805B2988  90 CB 00 08 */	stw r6, 8(r11)
/* 805B298C  7F 68 DB 78 */	mr r8, r27
/* 805B2990  38 C0 00 00 */	li r6, 0
/* 805B2994  38 E0 00 00 */	li r7, 0
/* 805B2998  91 4B 00 0C */	stw r10, 0xc(r11)
/* 805B299C  39 6B 00 10 */	addi r11, r11, 0x10
/* 805B29A0  7D 6A 5B 78 */	mr r10, r11
/* 805B29A4  91 2B 00 00 */	stw r9, 0(r11)
/* 805B29A8  39 6B 00 08 */	addi r11, r11, 8
/* 805B29AC  90 0A 00 04 */	stw r0, 4(r10)
/* 805B29B0  91 7E 02 D0 */	stw r11, 0x2d0(r30)
/* 805B29B4  4B DB ED 85 */	bl cKF_Si3_draw_R_SV
/* 805B29B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B29BC  7F 83 E3 78 */	mr r3, r28
/* 805B29C0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B29C4  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805B29C8  3C C5 00 02 */	addis r6, r5, 2
/* 805B29CC  38 A0 00 00 */	li r5, 0
/* 805B29D0  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B29D4  81 86 00 04 */	lwz r12, 4(r6)
/* 805B29D8  7D 89 03 A6 */	mtctr r12
/* 805B29DC  4E 80 04 21 */	bctrl 
lbl_805B29E0:
/* 805B29E0  39 61 00 30 */	addi r11, r1, 0x30
/* 805B29E4  4B AE 85 2D */	bl func_8009AF10
/* 805B29E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B29EC  7C 08 03 A6 */	mtlr r0
/* 805B29F0  38 21 00 30 */	addi r1, r1, 0x30
/* 805B29F4  4E 80 00 20 */	blr 

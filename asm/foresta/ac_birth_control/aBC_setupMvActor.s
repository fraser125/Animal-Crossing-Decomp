lbl_8041490C:
/* 8041490C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80414910  7C 08 02 A6 */	mflr r0
/* 80414914  90 01 00 54 */	stw r0, 0x54(r1)
/* 80414918  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8041491C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80414920  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80414924  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80414928  39 61 00 30 */	addi r11, r1, 0x30
/* 8041492C  4B C8 65 99 */	bl func_8009AEC4
/* 80414930  7C 79 1B 78 */	mr r25, r3
/* 80414934  7C 9A 23 78 */	mr r26, r4
/* 80414938  83 A3 01 78 */	lwz r29, 0x178(r3)
/* 8041493C  28 1D 00 00 */	cmplwi r29, 0
/* 80414940  41 82 01 98 */	beq lbl_80414AD8
/* 80414944  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80414948  A3 99 01 7C */	lhz r28, 0x17c(r25)
/* 8041494C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80414950  C3 FA 00 E8 */	lfs f31, 0xe8(r26)
/* 80414954  C3 DA 00 EC */	lfs f30, 0xec(r26)
/* 80414958  3F E3 00 02 */	addis r31, r3, 2
/* 8041495C  3B 60 00 00 */	li r27, 0
lbl_80414960:
/* 80414960  57 9E 04 3E */	clrlwi r30, r28, 0x10
/* 80414964  7F C0 DE 30 */	sraw r0, r30, r27
/* 80414968  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8041496C  2C 00 00 01 */	cmpwi r0, 1
/* 80414970  40 82 01 54 */	bne lbl_80414AC4
/* 80414974  A0 9D 00 00 */	lhz r4, 0(r29)
/* 80414978  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 8041497C  2C 00 00 09 */	cmpwi r0, 9
/* 80414980  41 82 00 7C */	beq lbl_804149FC
/* 80414984  40 80 00 10 */	bge lbl_80414994
/* 80414988  2C 00 00 08 */	cmpwi r0, 8
/* 8041498C  40 80 00 1C */	bge lbl_804149A8
/* 80414990  48 00 01 18 */	b lbl_80414AA8
lbl_80414994:
/* 80414994  2C 00 00 0F */	cmpwi r0, 0xf
/* 80414998  40 80 01 10 */	bge lbl_80414AA8
/* 8041499C  2C 00 00 0D */	cmpwi r0, 0xd
/* 804149A0  40 80 00 B0 */	bge lbl_80414A50
/* 804149A4  48 00 01 04 */	b lbl_80414AA8
lbl_804149A8:
/* 804149A8  88 BD 00 02 */	lbz r5, 2(r29)
/* 804149AC  3C 60 80 66 */	lis r3, aBC_pos_table@ha /* 0x8065FBD4@ha */
/* 804149B0  88 1D 00 03 */	lbz r0, 3(r29)
/* 804149B4  3C C0 80 66 */	lis r6, data_8065A330@ha /* 0x8065A330@ha */
/* 804149B8  54 A5 10 3A */	slwi r5, r5, 2
/* 804149BC  38 63 FB D4 */	addi r3, r3, aBC_pos_table@l /* 0x8065FBD4@l */
/* 804149C0  54 00 10 3A */	slwi r0, r0, 2
/* 804149C4  7C 23 2C 2E */	lfsx f1, r3, r5
/* 804149C8  7C 03 04 2E */	lfsx f0, r3, r0
/* 804149CC  54 83 08 3C */	slwi r3, r4, 1
/* 804149D0  38 06 A3 30 */	addi r0, r6, data_8065A330@l /* 0x8065A330@l */
/* 804149D4  EC 3F 08 2A */	fadds f1, f31, f1
/* 804149D8  7C 60 1A 14 */	add r3, r0, r3
/* 804149DC  EC 5E 00 2A */	fadds f2, f30, f0
/* 804149E0  3C 83 FF FF */	addis r4, r3, 0xffff
/* 804149E4  7F 43 D3 78 */	mr r3, r26
/* 804149E8  A8 C4 00 00 */	lha r6, 0(r4)
/* 804149EC  7F A4 EB 78 */	mr r4, r29
/* 804149F0  7F 65 DB 78 */	mr r5, r27
/* 804149F4  4B FF FE 39 */	bl aBC_setupCommonMvActor
/* 804149F8  48 00 00 B4 */	b lbl_80414AAC
lbl_804149FC:
/* 804149FC  88 BD 00 02 */	lbz r5, 2(r29)
/* 80414A00  3C 60 80 66 */	lis r3, aBC_pos_table@ha /* 0x8065FBD4@ha */
/* 80414A04  88 1D 00 03 */	lbz r0, 3(r29)
/* 80414A08  3C C0 80 66 */	lis r6, actor_profile_table@ha /* 0x8065A35C@ha */
/* 80414A0C  54 A5 10 3A */	slwi r5, r5, 2
/* 80414A10  38 63 FB D4 */	addi r3, r3, aBC_pos_table@l /* 0x8065FBD4@l */
/* 80414A14  54 00 10 3A */	slwi r0, r0, 2
/* 80414A18  7C 23 2C 2E */	lfsx f1, r3, r5
/* 80414A1C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80414A20  54 83 08 3C */	slwi r3, r4, 1
/* 80414A24  38 06 A3 5C */	addi r0, r6, actor_profile_table@l /* 0x8065A35C@l */
/* 80414A28  EC 3F 08 2A */	fadds f1, f31, f1
/* 80414A2C  7C 60 1A 14 */	add r3, r0, r3
/* 80414A30  EC 5E 00 2A */	fadds f2, f30, f0
/* 80414A34  3C 83 FF FF */	addis r4, r3, 0xffff
/* 80414A38  7F 43 D3 78 */	mr r3, r26
/* 80414A3C  A8 C4 E0 00 */	lha r6, -0x2000(r4)
/* 80414A40  7F A4 EB 78 */	mr r4, r29
/* 80414A44  7F 65 DB 78 */	mr r5, r27
/* 80414A48  4B FF FD E5 */	bl aBC_setupCommonMvActor
/* 80414A4C  48 00 00 60 */	b lbl_80414AAC
lbl_80414A50:
/* 80414A50  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 80414A54  28 03 00 00 */	cmplwi r3, 0
/* 80414A58  41 82 00 48 */	beq lbl_80414AA0
/* 80414A5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80414A60  28 0C 00 00 */	cmplwi r12, 0
/* 80414A64  41 82 00 3C */	beq lbl_80414AA0
/* 80414A68  88 1D 00 03 */	lbz r0, 3(r29)
/* 80414A6C  7F 43 D3 78 */	mr r3, r26
/* 80414A70  7F 66 DB 78 */	mr r6, r27
/* 80414A74  90 01 00 08 */	stw r0, 8(r1)
/* 80414A78  89 1A 00 E4 */	lbz r8, 0xe4(r26)
/* 80414A7C  89 3A 00 E5 */	lbz r9, 0xe5(r26)
/* 80414A80  7D 08 07 74 */	extsb r8, r8
/* 80414A84  88 BD 00 04 */	lbz r5, 4(r29)
/* 80414A88  7D 29 07 74 */	extsb r9, r9
/* 80414A8C  A8 FD 00 06 */	lha r7, 6(r29)
/* 80414A90  89 5D 00 02 */	lbz r10, 2(r29)
/* 80414A94  7D 89 03 A6 */	mtctr r12
/* 80414A98  4E 80 04 21 */	bctrl 
/* 80414A9C  48 00 00 10 */	b lbl_80414AAC
lbl_80414AA0:
/* 80414AA0  38 60 00 00 */	li r3, 0
/* 80414AA4  48 00 00 08 */	b lbl_80414AAC
lbl_80414AA8:
/* 80414AA8  38 60 00 00 */	li r3, 0
lbl_80414AAC:
/* 80414AAC  2C 03 00 01 */	cmpwi r3, 1
/* 80414AB0  40 82 00 14 */	bne lbl_80414AC4
/* 80414AB4  38 00 00 01 */	li r0, 1
/* 80414AB8  7C 00 D8 30 */	slw r0, r0, r27
/* 80414ABC  7F C0 00 78 */	andc r0, r30, r0
/* 80414AC0  54 1C 04 3E */	clrlwi r28, r0, 0x10
lbl_80414AC4:
/* 80414AC4  3B 7B 00 01 */	addi r27, r27, 1
/* 80414AC8  3B BD 00 08 */	addi r29, r29, 8
/* 80414ACC  2C 1B 00 10 */	cmpwi r27, 0x10
/* 80414AD0  41 80 FE 90 */	blt lbl_80414960
/* 80414AD4  B3 99 01 7C */	sth r28, 0x17c(r25)
lbl_80414AD8:
/* 80414AD8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80414ADC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80414AE0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80414AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80414AE8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80414AEC  4B C8 64 25 */	bl func_8009AF10
/* 80414AF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80414AF4  7C 08 03 A6 */	mtlr r0
/* 80414AF8  38 21 00 50 */	addi r1, r1, 0x50
/* 80414AFC  4E 80 00 20 */	blr 

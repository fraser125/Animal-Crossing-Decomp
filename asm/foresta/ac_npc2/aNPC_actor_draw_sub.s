lbl_8053E4A4:
/* 8053E4A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053E4A8  7C 08 02 A6 */	mflr r0
/* 8053E4AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053E4B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8053E4B4  4B B5 CA 05 */	bl func_8009AEB8
/* 8053E4B8  7C 76 1B 78 */	mr r22, r3
/* 8053E4BC  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 8053E4C0  83 C4 00 00 */	lwz r30, 0(r4)
/* 8053E4C4  7C 97 23 78 */	mr r23, r4
/* 8053E4C8  88 63 00 01 */	lbz r3, 1(r3)
/* 8053E4CC  3B F6 01 A8 */	addi r31, r22, 0x1a8
/* 8053E4D0  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 8053E4D4  54 63 30 32 */	slwi r3, r3, 6
/* 8053E4D8  7C 03 00 51 */	subf. r0, r3, r0
/* 8053E4DC  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 8053E4E0  7C 1D 03 78 */	mr r29, r0
/* 8053E4E4  41 82 02 B4 */	beq lbl_8053E798
/* 8053E4E8  88 96 07 20 */	lbz r4, 0x720(r22)
/* 8053E4EC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D06F@ha */
/* 8053E4F0  88 16 07 34 */	lbz r0, 0x734(r22)
/* 8053E4F4  3B 96 07 78 */	addi r28, r22, 0x778
/* 8053E4F8  54 86 10 3A */	slwi r6, r4, 2
/* 8053E4FC  A0 96 00 06 */	lhz r4, 6(r22)
/* 8053E500  54 05 10 3A */	slwi r5, r0, 2
/* 8053E504  38 03 D0 6F */	addi r0, r3, 0xD06F /* 0x0000D06F@l */
/* 8053E508  7C DC 32 14 */	add r6, r28, r6
/* 8053E50C  7C 7C 2A 14 */	add r3, r28, r5
/* 8053E510  7C 04 00 00 */	cmpw r4, r0
/* 8053E514  83 66 00 08 */	lwz r27, 8(r6)
/* 8053E518  83 43 00 28 */	lwz r26, 0x28(r3)
/* 8053E51C  41 82 00 08 */	beq lbl_8053E524
/* 8053E520  48 00 00 60 */	b lbl_8053E580
lbl_8053E524:
/* 8053E524  83 3E 02 E0 */	lwz r25, 0x2e0(r30)
/* 8053E528  3C 00 DE 00 */	lis r0, 0xde00
/* 8053E52C  3C 60 80 6A */	lis r3, xlu_env_disp@ha /* 0x806A3B18@ha */
/* 8053E530  3B 00 00 01 */	li r24, 1
/* 8053E534  90 19 00 00 */	stw r0, 0(r25)
/* 8053E538  38 03 3B 18 */	addi r0, r3, xlu_env_disp@l /* 0x806A3B18@l */
/* 8053E53C  90 19 00 04 */	stw r0, 4(r25)
/* 8053E540  3B 39 00 08 */	addi r25, r25, 8
/* 8053E544  88 16 09 A9 */	lbz r0, 0x9a9(r22)
/* 8053E548  28 00 00 7F */	cmplwi r0, 0x7f
/* 8053E54C  40 81 00 44 */	ble lbl_8053E590
/* 8053E550  3C 00 E7 00 */	lis r0, 0xe700
/* 8053E554  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE200001C@ha */
/* 8053E558  90 19 00 00 */	stw r0, 0(r25)
/* 8053E55C  38 00 00 00 */	li r0, 0
/* 8053E560  3C 60 C8 10 */	lis r3, 0xC810 /* 0xC8104A70@ha */
/* 8053E564  38 84 00 1C */	addi r4, r4, 0x001C /* 0xE200001C@l */
/* 8053E568  90 19 00 04 */	stw r0, 4(r25)
/* 8053E56C  38 03 4A 70 */	addi r0, r3, 0x4A70 /* 0xC8104A70@l */
/* 8053E570  90 99 00 08 */	stw r4, 8(r25)
/* 8053E574  90 19 00 0C */	stw r0, 0xc(r25)
/* 8053E578  3B 39 00 10 */	addi r25, r25, 0x10
/* 8053E57C  48 00 00 14 */	b lbl_8053E590
lbl_8053E580:
/* 8053E580  7F C3 F3 78 */	mr r3, r30
/* 8053E584  3B 00 00 00 */	li r24, 0
/* 8053E588  4B EA 6C 21 */	bl _texture_z_light_fog_prim_npc
/* 8053E58C  83 3E 02 D0 */	lwz r25, 0x2d0(r30)
lbl_8053E590:
/* 8053E590  3C 00 CE 00 */	lis r0, 0xce00
/* 8053E594  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 8053E598  90 19 00 00 */	stw r0, 0(r25)
/* 8053E59C  38 A0 00 7F */	li r5, 0x7f
/* 8053E5A0  38 83 00 01 */	addi r4, r3, 0x0001 /* 0xD5020001@l */
/* 8053E5A4  38 00 00 00 */	li r0, 0
/* 8053E5A8  90 B9 00 04 */	stw r5, 4(r25)
/* 8053E5AC  7E C3 B3 78 */	mr r3, r22
/* 8053E5B0  90 99 00 08 */	stw r4, 8(r25)
/* 8053E5B4  90 19 00 0C */	stw r0, 0xc(r25)
/* 8053E5B8  3B 39 00 10 */	addi r25, r25, 0x10
/* 8053E5BC  4B FF FA 19 */	bl func_8053DFD4
/* 8053E5C0  2C 03 00 01 */	cmpwi r3, 1
/* 8053E5C4  40 82 00 4C */	bne lbl_8053E610
/* 8053E5C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053E5CC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8053E5D0  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8053E5D4  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 8053E5D8  3C 60 F0 8D */	lis r3, 0xF08D /* 0xF08D4010@ha */
/* 8053E5DC  3C A5 00 02 */	addis r5, r5, 2
/* 8053E5E0  90 19 00 00 */	stw r0, 0(r25)
/* 8053E5E4  38 85 3F 40 */	addi r4, r5, 0x3f40
/* 8053E5E8  38 03 40 10 */	addi r0, r3, 0x4010 /* 0xF08D4010@l */
/* 8053E5EC  90 99 00 04 */	stw r4, 4(r25)
/* 8053E5F0  3B 39 00 08 */	addi r25, r25, 8
/* 8053E5F4  7F 3A CB 78 */	mr r26, r25
/* 8053E5F8  90 19 00 00 */	stw r0, 0(r25)
/* 8053E5FC  3B 39 00 08 */	addi r25, r25, 8
/* 8053E600  88 65 41 40 */	lbz r3, 0x4140(r5)
/* 8053E604  4B E8 B5 B9 */	bl mNW_PaletteIdx2Palette
/* 8053E608  90 7A 00 04 */	stw r3, 4(r26)
/* 8053E60C  48 00 00 3C */	b lbl_8053E648
lbl_8053E610:
/* 8053E610  28 1B 00 00 */	cmplwi r27, 0
/* 8053E614  41 82 00 18 */	beq lbl_8053E62C
/* 8053E618  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8053E61C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 8053E620  90 19 00 00 */	stw r0, 0(r25)
/* 8053E624  93 79 00 04 */	stw r27, 4(r25)
/* 8053E628  3B 39 00 08 */	addi r25, r25, 8
lbl_8053E62C:
/* 8053E62C  28 1A 00 00 */	cmplwi r26, 0
/* 8053E630  41 82 00 18 */	beq lbl_8053E648
/* 8053E634  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 8053E638  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 8053E63C  90 19 00 00 */	stw r0, 0(r25)
/* 8053E640  93 59 00 04 */	stw r26, 4(r25)
/* 8053E644  3B 39 00 08 */	addi r25, r25, 8
lbl_8053E648:
/* 8053E648  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB06002C@ha */
/* 8053E64C  3C 60 F0 8F */	lis r3, 0xF08F /* 0xF08F4010@ha */
/* 8053E650  38 04 00 2C */	addi r0, r4, 0x002C /* 0xDB06002C@l */
/* 8053E654  90 19 00 00 */	stw r0, 0(r25)
/* 8053E658  38 03 40 10 */	addi r0, r3, 0x4010 /* 0xF08F4010@l */
/* 8053E65C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8053E660  90 79 00 04 */	stw r3, 4(r25)
/* 8053E664  90 19 00 08 */	stw r0, 8(r25)
/* 8053E668  80 1C 00 04 */	lwz r0, 4(r28)
/* 8053E66C  90 19 00 0C */	stw r0, 0xc(r25)
/* 8053E670  3B 39 00 10 */	addi r25, r25, 0x10
/* 8053E674  88 16 07 4C */	lbz r0, 0x74c(r22)
/* 8053E678  7C 03 07 75 */	extsb. r3, r0
/* 8053E67C  41 82 00 98 */	beq lbl_8053E714
/* 8053E680  7C 00 07 74 */	extsb r0, r0
/* 8053E684  2C 00 00 0B */	cmpwi r0, 0xb
/* 8053E688  40 82 00 4C */	bne lbl_8053E6D4
/* 8053E68C  80 76 01 7C */	lwz r3, 0x17c(r22)
/* 8053E690  28 03 00 00 */	cmplwi r3, 0
/* 8053E694  40 82 00 0C */	bne lbl_8053E6A0
/* 8053E698  38 00 00 00 */	li r0, 0
/* 8053E69C  48 00 00 08 */	b lbl_8053E6A4
lbl_8053E6A0:
/* 8053E6A0  88 03 08 EB */	lbz r0, 0x8eb(r3)
lbl_8053E6A4:
/* 8053E6A4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8053E6A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053E6AC  1C A0 02 20 */	mulli r5, r0, 0x220
/* 8053E6B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053E6B4  3C 03 00 02 */	addis r0, r3, 2
/* 8053E6B8  7C 83 2A 14 */	add r4, r3, r5
/* 8053E6BC  7C 60 2A 14 */	add r3, r0, r5
/* 8053E6C0  3F 44 00 02 */	addis r26, r4, 2
/* 8053E6C4  88 63 14 10 */	lbz r3, 0x1410(r3)
/* 8053E6C8  3B 5A 14 20 */	addi r26, r26, 0x1420
/* 8053E6CC  4B E8 B4 F1 */	bl mNW_PaletteIdx2Palette
/* 8053E6D0  48 00 00 20 */	b lbl_8053E6F0
lbl_8053E6D4:
/* 8053E6D4  1C 63 00 C0 */	mulli r3, r3, 0xc0
/* 8053E6D8  3C 80 81 1F */	lis r4, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053E6DC  80 04 BD 30 */	lwz r0, data_811EBD30@l(r4)  /* 0x811EBD30@l */
/* 8053E6E0  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8053E6E4  7C 60 1A 14 */	add r3, r0, r3
/* 8053E6E8  83 43 00 0C */	lwz r26, 0xc(r3)
/* 8053E6EC  80 63 00 68 */	lwz r3, 0x68(r3)
lbl_8053E6F0:
/* 8053E6F0  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060028@ha */
/* 8053E6F4  3C 80 F0 8E */	lis r4, 0xF08E /* 0xF08E4010@ha */
/* 8053E6F8  38 05 00 28 */	addi r0, r5, 0x0028 /* 0xDB060028@l */
/* 8053E6FC  90 19 00 00 */	stw r0, 0(r25)
/* 8053E700  38 04 40 10 */	addi r0, r4, 0x4010 /* 0xF08E4010@l */
/* 8053E704  93 59 00 04 */	stw r26, 4(r25)
/* 8053E708  90 19 00 08 */	stw r0, 8(r25)
/* 8053E70C  90 79 00 0C */	stw r3, 0xc(r25)
/* 8053E710  3B 39 00 10 */	addi r25, r25, 0x10
lbl_8053E714:
/* 8053E714  2C 18 00 01 */	cmpwi r24, 1
/* 8053E718  40 82 00 0C */	bne lbl_8053E724
/* 8053E71C  93 3E 02 E0 */	stw r25, 0x2e0(r30)
/* 8053E720  48 00 00 08 */	b lbl_8053E728
lbl_8053E724:
/* 8053E724  93 3E 02 D0 */	stw r25, 0x2d0(r30)
lbl_8053E728:
/* 8053E728  3C 60 80 54 */	lis r3, aNPC_actor_draw_before@ha /* 0x8053E1DC@ha */
/* 8053E72C  3C 80 80 54 */	lis r4, aNPC_actor_draw_after@ha /* 0x8053E444@ha */
/* 8053E730  38 C3 E1 DC */	addi r6, r3, aNPC_actor_draw_before@l /* 0x8053E1DC@l */
/* 8053E734  7F A5 EB 78 */	mr r5, r29
/* 8053E738  38 E4 E4 44 */	addi r7, r4, aNPC_actor_draw_after@l /* 0x8053E444@l */
/* 8053E73C  7E E3 BB 78 */	mr r3, r23
/* 8053E740  7F E4 FB 78 */	mr r4, r31
/* 8053E744  7E C8 B3 78 */	mr r8, r22
/* 8053E748  4B E3 2F F1 */	bl cKF_Si3_draw_R_SV
/* 8053E74C  2C 18 00 01 */	cmpwi r24, 1
/* 8053E750  40 82 00 0C */	bne lbl_8053E75C
/* 8053E754  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8053E758  48 00 00 08 */	b lbl_8053E760
lbl_8053E75C:
/* 8053E75C  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
lbl_8053E760:
/* 8053E760  3C 00 CE 00 */	lis r0, 0xce00
/* 8053E764  38 80 00 90 */	li r4, 0x90
/* 8053E768  90 05 00 00 */	stw r0, 0(r5)
/* 8053E76C  3C 60 D5 02 */	lis r3, 0xd502
/* 8053E770  2C 18 00 01 */	cmpwi r24, 1
/* 8053E774  38 00 00 00 */	li r0, 0
/* 8053E778  90 85 00 04 */	stw r4, 4(r5)
/* 8053E77C  90 65 00 08 */	stw r3, 8(r5)
/* 8053E780  90 05 00 0C */	stw r0, 0xc(r5)
/* 8053E784  38 A5 00 10 */	addi r5, r5, 0x10
/* 8053E788  40 82 00 0C */	bne lbl_8053E794
/* 8053E78C  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8053E790  48 00 00 08 */	b lbl_8053E798
lbl_8053E794:
/* 8053E794  90 BE 02 D0 */	stw r5, 0x2d0(r30)
lbl_8053E798:
/* 8053E798  39 61 00 30 */	addi r11, r1, 0x30
/* 8053E79C  4B B5 C7 69 */	bl func_8009AF04
/* 8053E7A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053E7A4  7C 08 03 A6 */	mtlr r0
/* 8053E7A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8053E7AC  4E 80 00 20 */	blr 
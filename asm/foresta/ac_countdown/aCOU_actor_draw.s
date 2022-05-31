lbl_805AC6C8:
/* 805AC6C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AC6CC  7C 08 02 A6 */	mflr r0
/* 805AC6D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AC6D4  39 61 00 40 */	addi r11, r1, 0x40
/* 805AC6D8  4B AE E7 ED */	bl func_8009AEC4
/* 805AC6DC  7C 7B 1B 78 */	mr r27, r3
/* 805AC6E0  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805AC6E4  83 E4 00 00 */	lwz r31, 0(r4)
/* 805AC6E8  7C 9C 23 78 */	mr r28, r4
/* 805AC6EC  88 63 00 01 */	lbz r3, 1(r3)
/* 805AC6F0  3B DB 01 78 */	addi r30, r27, 0x178
/* 805AC6F4  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805AC6F8  54 63 30 32 */	slwi r3, r3, 6
/* 805AC6FC  7C 03 00 51 */	subf. r0, r3, r0
/* 805AC700  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805AC704  7C 1D 03 78 */	mr r29, r0
/* 805AC708  41 82 01 04 */	beq lbl_805AC80C
/* 805AC70C  80 BB 02 BC */	lwz r5, 0x2bc(r27)
/* 805AC710  38 00 00 10 */	li r0, 0x10
/* 805AC714  7F E3 FB 78 */	mr r3, r31
/* 805AC718  38 80 00 00 */	li r4, 0
/* 805AC71C  90 A1 00 08 */	stw r5, 8(r1)
/* 805AC720  38 A0 00 10 */	li r5, 0x10
/* 805AC724  38 C0 00 00 */	li r6, 0
/* 805AC728  38 E0 00 10 */	li r7, 0x10
/* 805AC72C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AC730  39 00 00 10 */	li r8, 0x10
/* 805AC734  39 20 00 01 */	li r9, 1
/* 805AC738  39 40 00 48 */	li r10, 0x48
/* 805AC73C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AC740  4B E3 8D 91 */	bl two_tex_scroll
/* 805AC744  7C 79 1B 79 */	or. r25, r3, r3
/* 805AC748  41 82 00 C4 */	beq lbl_805AC80C
/* 805AC74C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AC750  38 60 00 4A */	li r3, 0x4a
/* 805AC754  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AC758  3C 84 00 02 */	addis r4, r4, 2
/* 805AC75C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805AC760  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805AC764  7D 89 03 A6 */	mtctr r12
/* 805AC768  4E 80 04 21 */	bctrl 
/* 805AC76C  7C 7A 1B 78 */	mr r26, r3
/* 805AC770  7F E3 FB 78 */	mr r3, r31
/* 805AC774  4B E3 89 95 */	bl _texture_z_light_fog_prim
/* 805AC778  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 805AC77C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805AC780  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805AC784  7F E3 FB 78 */	mr r3, r31
/* 805AC788  7C 85 23 78 */	mr r5, r4
/* 805AC78C  38 84 00 08 */	addi r4, r4, 8
/* 805AC790  90 05 00 00 */	stw r0, 0(r5)
/* 805AC794  93 45 00 04 */	stw r26, 4(r5)
/* 805AC798  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805AC79C  4B E3 89 BD */	bl _texture_z_light_fog_prim_xlu
/* 805AC7A0  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 805AC7A4  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805AC7A8  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805AC7AC  3C 80 80 5B */	lis r4, func_805AC57C@ha /* 0x805AC57C@ha */
/* 805AC7B0  90 07 00 00 */	stw r0, 0(r7)
/* 805AC7B4  7C E8 3B 78 */	mr r8, r7
/* 805AC7B8  38 C4 C5 7C */	addi r6, r4, func_805AC57C@l /* 0x805AC57C@l */
/* 805AC7BC  38 E7 00 08 */	addi r7, r7, 8
/* 805AC7C0  93 28 00 04 */	stw r25, 4(r8)
/* 805AC7C4  7F 83 E3 78 */	mr r3, r28
/* 805AC7C8  7F C4 F3 78 */	mr r4, r30
/* 805AC7CC  7F A5 EB 78 */	mr r5, r29
/* 805AC7D0  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 805AC7D4  7F 68 DB 78 */	mr r8, r27
/* 805AC7D8  38 E0 00 00 */	li r7, 0
/* 805AC7DC  4B DC 4F 5D */	bl cKF_Si3_draw_R_SV
/* 805AC7E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AC7E4  3C C0 80 6C */	lis r6, aCOU_shadow_data@ha /* 0x806C49D0@ha */
/* 805AC7E8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AC7EC  3C A4 00 02 */	addis r5, r4, 2
/* 805AC7F0  7F 83 E3 78 */	mr r3, r28
/* 805AC7F4  38 86 49 D0 */	addi r4, r6, aCOU_shadow_data@l /* 0x806C49D0@l */
/* 805AC7F8  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805AC7FC  38 A0 00 00 */	li r5, 0
/* 805AC800  81 86 00 04 */	lwz r12, 4(r6)
/* 805AC804  7D 89 03 A6 */	mtctr r12
/* 805AC808  4E 80 04 21 */	bctrl 
lbl_805AC80C:
/* 805AC80C  39 61 00 40 */	addi r11, r1, 0x40
/* 805AC810  4B AE E7 01 */	bl func_8009AF10
/* 805AC814  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AC818  7C 08 03 A6 */	mtlr r0
/* 805AC81C  38 21 00 40 */	addi r1, r1, 0x40
/* 805AC820  4E 80 00 20 */	blr 

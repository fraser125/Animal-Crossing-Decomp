lbl_805BA2F8:
/* 805BA2F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA2FC  7C 08 02 A6 */	mflr r0
/* 805BA300  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA304  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA308  4B AE 0B C1 */	bl func_8009AEC8
/* 805BA30C  7C 7C 1B 78 */	mr r28, r3
/* 805BA310  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805BA314  83 E4 00 00 */	lwz r31, 0(r4)
/* 805BA318  7C 9D 23 78 */	mr r29, r4
/* 805BA31C  88 63 00 01 */	lbz r3, 1(r3)
/* 805BA320  3B DC 01 78 */	addi r30, r28, 0x178
/* 805BA324  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805BA328  54 63 30 32 */	slwi r3, r3, 6
/* 805BA32C  7C 03 00 51 */	subf. r0, r3, r0
/* 805BA330  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805BA334  7C 1A 03 78 */	mr r26, r0
/* 805BA338  41 82 00 A0 */	beq lbl_805BA3D8
/* 805BA33C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BA340  38 60 00 25 */	li r3, 0x25
/* 805BA344  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BA348  3C 84 00 02 */	addis r4, r4, 2
/* 805BA34C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BA350  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BA354  7D 89 03 A6 */	mtctr r12
/* 805BA358  4E 80 04 21 */	bctrl 
/* 805BA35C  7C 7B 1B 78 */	mr r27, r3
/* 805BA360  7F E3 FB 78 */	mr r3, r31
/* 805BA364  4B E2 AE 45 */	bl _texture_z_light_fog_prim_npc
/* 805BA368  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805BA36C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805BA370  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805BA374  3C 80 80 5C */	lis r4, func_805BA09C@ha /* 0x805BA09C@ha */
/* 805BA378  90 08 00 00 */	stw r0, 0(r8)
/* 805BA37C  7D 09 43 78 */	mr r9, r8
/* 805BA380  3C 60 80 5C */	lis r3, aSHOP_actor_draw_after@ha /* 0x805BA194@ha */
/* 805BA384  38 C4 A0 9C */	addi r6, r4, func_805BA09C@l /* 0x805BA09C@l */
/* 805BA388  93 69 00 04 */	stw r27, 4(r9)
/* 805BA38C  39 08 00 08 */	addi r8, r8, 8
/* 805BA390  38 E3 A1 94 */	addi r7, r3, aSHOP_actor_draw_after@l /* 0x805BA194@l */
/* 805BA394  7F A3 EB 78 */	mr r3, r29
/* 805BA398  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805BA39C  7F C4 F3 78 */	mr r4, r30
/* 805BA3A0  7F 45 D3 78 */	mr r5, r26
/* 805BA3A4  7F 88 E3 78 */	mr r8, r28
/* 805BA3A8  4B DB 73 91 */	bl cKF_Si3_draw_R_SV
/* 805BA3AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BA3B0  3C C0 80 6C */	lis r6, aSHOP_shadow_data@ha /* 0x806C65FC@ha */
/* 805BA3B4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BA3B8  3C A4 00 02 */	addis r5, r4, 2
/* 805BA3BC  7F A3 EB 78 */	mr r3, r29
/* 805BA3C0  38 86 65 FC */	addi r4, r6, aSHOP_shadow_data@l /* 0x806C65FC@l */
/* 805BA3C4  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805BA3C8  38 A0 00 00 */	li r5, 0
/* 805BA3CC  81 86 00 04 */	lwz r12, 4(r6)
/* 805BA3D0  7D 89 03 A6 */	mtctr r12
/* 805BA3D4  4E 80 04 21 */	bctrl 
lbl_805BA3D8:
/* 805BA3D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA3DC  4B AE 0B 39 */	bl func_8009AF14
/* 805BA3E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA3E4  7C 08 03 A6 */	mtlr r0
/* 805BA3E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA3EC  4E 80 00 20 */	blr 

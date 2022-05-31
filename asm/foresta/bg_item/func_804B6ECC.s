lbl_804B6ECC:
/* 804B6ECC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B6ED0  7C 08 02 A6 */	mflr r0
/* 804B6ED4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B6ED8  39 61 00 40 */	addi r11, r1, 0x40
/* 804B6EDC  4B BE 3F DD */	bl func_8009AEB8
/* 804B6EE0  7C 7B 1B 78 */	mr r27, r3
/* 804B6EE4  3C A0 80 69 */	lis r5, data_80692AE0@ha /* 0x80692AE0@ha */
/* 804B6EE8  3B DB 01 74 */	addi r30, r27, 0x174
/* 804B6EEC  7C 9C 23 78 */	mr r28, r4
/* 804B6EF0  3B E5 2A E0 */	addi r31, r5, data_80692AE0@l /* 0x80692AE0@l */
/* 804B6EF4  3F BE 00 01 */	addis r29, r30, 1
/* 804B6EF8  48 00 03 E1 */	bl bIT_clip_ct
/* 804B6EFC  7F A3 EB 78 */	mr r3, r29
/* 804B6F00  38 63 25 54 */	addi r3, r3, 0x2554
/* 804B6F04  4B EF 0A 2D */	bl mFI_InitItemTable
/* 804B6F08  7F 83 E3 78 */	mr r3, r28
/* 804B6F0C  4B F2 27 35 */	bl get_player_actor_withoutCheck
/* 804B6F10  7C 7A 1B 78 */	mr r26, r3
/* 804B6F14  4B EE 85 99 */	bl mEvMN_GetEventTypeMap
/* 804B6F18  28 1A 00 00 */	cmplwi r26, 0
/* 804B6F1C  7C 78 1B 78 */	mr r24, r3
/* 804B6F20  41 82 00 38 */	beq lbl_804B6F58
/* 804B6F24  80 DA 00 28 */	lwz r6, 0x28(r26)
/* 804B6F28  3C 7B 00 01 */	addis r3, r27, 1
/* 804B6F2C  80 1A 00 2C */	lwz r0, 0x2c(r26)
/* 804B6F30  38 81 00 08 */	addi r4, r1, 8
/* 804B6F34  38 BF 2F 34 */	addi r5, r31, 0x2f34
/* 804B6F38  38 63 26 C8 */	addi r3, r3, 0x26c8
/* 804B6F3C  90 C1 00 08 */	stw r6, 8(r1)
/* 804B6F40  38 C0 01 01 */	li r6, 0x101
/* 804B6F44  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B6F48  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 804B6F4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B6F50  4B EF 0E 49 */	bl mFI_GetItemTable
/* 804B6F54  4B EF 0F 1D */	bl mFI_BornItemON
lbl_804B6F58:
/* 804B6F58  3C 7E 00 01 */	addis r3, r30, 1
/* 804B6F5C  3B 40 00 00 */	li r26, 0
/* 804B6F60  83 23 25 54 */	lwz r25, 0x2554(r3)
/* 804B6F64  3A E3 25 58 */	addi r23, r3, 0x2558
/* 804B6F68  3A C3 21 54 */	addi r22, r3, 0x2154
/* 804B6F6C  48 00 00 54 */	b lbl_804B6FC0
lbl_804B6F70:
/* 804B6F70  88 77 00 00 */	lbz r3, 0(r23)
/* 804B6F74  7E C5 B3 78 */	mr r5, r22
/* 804B6F78  88 97 00 01 */	lbz r4, 1(r23)
/* 804B6F7C  7C 63 07 74 */	extsb r3, r3
/* 804B6F80  7C 84 07 74 */	extsb r4, r4
/* 804B6F84  48 00 4E E5 */	bl bIT_common_clear_treeatr
/* 804B6F88  2C 18 FF FF */	cmpwi r24, -1
/* 804B6F8C  41 82 00 14 */	beq lbl_804B6FA0
/* 804B6F90  7F 03 C3 78 */	mr r3, r24
/* 804B6F94  4B EE 84 D5 */	bl mEvMN_GetMapIdx
/* 804B6F98  2C 03 FF FF */	cmpwi r3, -1
/* 804B6F9C  40 82 00 18 */	bne lbl_804B6FB4
lbl_804B6FA0:
/* 804B6FA0  88 77 00 00 */	lbz r3, 0(r23)
/* 804B6FA4  88 97 00 01 */	lbz r4, 1(r23)
/* 804B6FA8  7C 63 07 74 */	extsb r3, r3
/* 804B6FAC  7C 84 07 74 */	extsb r4, r4
/* 804B6FB0  4B EF 26 71 */	bl mFI_ClearHoleBlock
lbl_804B6FB4:
/* 804B6FB4  3B 5A 00 01 */	addi r26, r26, 1
/* 804B6FB8  3A F7 00 10 */	addi r23, r23, 0x10
/* 804B6FBC  3A D6 01 00 */	addi r22, r22, 0x100
lbl_804B6FC0:
/* 804B6FC0  7C 1A C8 00 */	cmpw r26, r25
/* 804B6FC4  41 80 FF AC */	blt lbl_804B6F70
/* 804B6FC8  38 A0 00 00 */	li r5, 0
/* 804B6FCC  38 00 00 04 */	li r0, 4
/* 804B6FD0  7C A3 2B 78 */	mr r3, r5
/* 804B6FD4  7C 09 03 A6 */	mtctr r0
lbl_804B6FD8:
/* 804B6FD8  3C 83 00 01 */	addis r4, r3, 1
/* 804B6FDC  38 63 00 04 */	addi r3, r3, 4
/* 804B6FE0  38 84 39 F4 */	addi r4, r4, 0x39f4
/* 804B6FE4  7C BE 21 2E */	stwx r5, r30, r4
/* 804B6FE8  38 A5 00 01 */	addi r5, r5, 1
/* 804B6FEC  42 00 FF EC */	bdnz lbl_804B6FD8
/* 804B6FF0  38 00 00 04 */	li r0, 4
/* 804B6FF4  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 804B6FF8  B0 1D 25 C8 */	sth r0, 0x25c8(r29)
/* 804B6FFC  38 1F 27 94 */	addi r0, r31, 0x2794
/* 804B7000  39 23 7A 58 */	addi r9, r3, g_fdinfo@l /* 0x81167A58@l */
/* 804B7004  3C 80 80 75 */	lis r4, data_807522C0@ha /* 0x807522C0@ha */
/* 804B7008  90 1D 25 98 */	stw r0, 0x2598(r29)
/* 804B700C  3C A0 80 75 */	lis r5, obj_g_hole_pal@ha /* 0x807522E0@ha */
/* 804B7010  38 E5 22 E0 */	addi r7, r5, obj_g_hole_pal@l /* 0x807522E0@l */
/* 804B7014  38 C4 22 C0 */	addi r6, r4, data_807522C0@l /* 0x807522C0@l */
/* 804B7018  81 09 00 00 */	lwz r8, 0(r9)
/* 804B701C  3C BE 00 01 */	addis r5, r30, 1
/* 804B7020  38 00 00 04 */	li r0, 4
/* 804B7024  3C 7B 00 01 */	addis r3, r27, 1
/* 804B7028  80 88 00 54 */	lwz r4, 0x54(r8)
/* 804B702C  7F CA F3 78 */	mr r10, r30
/* 804B7030  90 9D 25 A4 */	stw r4, 0x25a4(r29)
/* 804B7034  38 80 00 7A */	li r4, 0x7a
/* 804B7038  81 09 00 00 */	lwz r8, 0(r9)
/* 804B703C  81 08 00 58 */	lwz r8, 0x58(r8)
/* 804B7040  91 1D 25 A8 */	stw r8, 0x25a8(r29)
/* 804B7044  81 09 00 00 */	lwz r8, 0(r9)
/* 804B7048  81 08 00 5C */	lwz r8, 0x5c(r8)
/* 804B704C  91 1D 25 AC */	stw r8, 0x25ac(r29)
/* 804B7050  81 09 00 00 */	lwz r8, 0(r9)
/* 804B7054  81 08 00 60 */	lwz r8, 0x60(r8)
/* 804B7058  91 1D 25 B0 */	stw r8, 0x25b0(r29)
/* 804B705C  81 09 00 00 */	lwz r8, 0(r9)
/* 804B7060  81 08 00 68 */	lwz r8, 0x68(r8)
/* 804B7064  91 1D 25 BC */	stw r8, 0x25bc(r29)
/* 804B7068  81 09 00 00 */	lwz r8, 0(r9)
/* 804B706C  81 08 00 6C */	lwz r8, 0x6c(r8)
/* 804B7070  91 1D 25 C0 */	stw r8, 0x25c0(r29)
/* 804B7074  81 09 00 00 */	lwz r8, 0(r9)
/* 804B7078  81 08 00 70 */	lwz r8, 0x70(r8)
/* 804B707C  91 1D 25 C4 */	stw r8, 0x25c4(r29)
/* 804B7080  90 FD 25 B4 */	stw r7, 0x25b4(r29)
/* 804B7084  90 DD 25 B8 */	stw r6, 0x25b8(r29)
/* 804B7088  93 65 39 DC */	stw r27, 0x39dc(r5)
/* 804B708C  7C 09 03 A6 */	mtctr r0
/* 804B7090  38 63 3B 78 */	addi r3, r3, 0x3b78
lbl_804B7094:
/* 804B7094  B0 8A 48 4C */	sth r4, 0x484c(r10)
/* 804B7098  90 6A 48 48 */	stw r3, 0x4848(r10)
/* 804B709C  39 4A 48 54 */	addi r10, r10, 0x4854
/* 804B70A0  38 63 00 F6 */	addi r3, r3, 0xf6
/* 804B70A4  42 00 FF F0 */	bdnz lbl_804B7094
/* 804B70A8  38 1F 00 24 */	addi r0, r31, 0x24
/* 804B70AC  7F C3 F3 78 */	mr r3, r30
/* 804B70B0  90 1D 25 A0 */	stw r0, 0x25a0(r29)
/* 804B70B4  48 00 57 91 */	bl bg_item_common_chg_BGDataR
/* 804B70B8  7F 83 E3 78 */	mr r3, r28
/* 804B70BC  7F C4 F3 78 */	mr r4, r30
/* 804B70C0  48 00 70 35 */	bl bg_item_common_construct
/* 804B70C4  39 61 00 40 */	addi r11, r1, 0x40
/* 804B70C8  4B BE 3E 3D */	bl func_8009AF04
/* 804B70CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B70D0  7C 08 03 A6 */	mtlr r0
/* 804B70D4  38 21 00 40 */	addi r1, r1, 0x40
/* 804B70D8  4E 80 00 20 */	blr 

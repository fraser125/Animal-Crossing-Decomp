lbl_803C5D18:
/* 803C5D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C5D1C  7C 08 02 A6 */	mflr r0
/* 803C5D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C5D24  39 61 00 20 */	addi r11, r1, 0x20
/* 803C5D28  4B CD 51 AD */	bl func_8009AED4
/* 803C5D2C  7C BF 2B 78 */	mr r31, r5
/* 803C5D30  7C 9E 23 78 */	mr r30, r4
/* 803C5D34  2C 1F 00 01 */	cmpwi r31, 1
/* 803C5D38  80 C4 00 00 */	lwz r6, 0(r4)
/* 803C5D3C  7C 7D 1B 78 */	mr r29, r3
/* 803C5D40  40 82 00 B0 */	bne lbl_803C5DF0
/* 803C5D44  81 46 02 F0 */	lwz r10, 0x2f0(r6)
/* 803C5D48  3D 20 80 66 */	lis r9, mMsg_init_disp@ha /* 0x8065A0D0@ha */
/* 803C5D4C  3D 00 FA 00 */	lis r8, 0xFA00 /* 0xFA0000FF@ha */
/* 803C5D50  3D 80 DE 00 */	lis r12, 0xde00
/* 803C5D54  38 0A 00 08 */	addi r0, r10, 8
/* 803C5D58  39 29 A0 D0 */	addi r9, r9, mMsg_init_disp@l /* 0x8065A0D0@l */
/* 803C5D5C  90 06 02 F0 */	stw r0, 0x2f0(r6)
/* 803C5D60  3C E0 80 66 */	lis r7, con_kaiwa2_modelT@ha /* 0x80659BE0@ha */
/* 803C5D64  38 07 9B E0 */	addi r0, r7, con_kaiwa2_modelT@l /* 0x80659BE0@l */
/* 803C5D68  39 08 00 FF */	addi r8, r8, 0x00FF /* 0xFA0000FF@l */
/* 803C5D6C  91 8A 00 00 */	stw r12, 0(r10)
/* 803C5D70  91 2A 00 04 */	stw r9, 4(r10)
/* 803C5D74  81 66 02 F0 */	lwz r11, 0x2f0(r6)
/* 803C5D78  38 EB 00 08 */	addi r7, r11, 8
/* 803C5D7C  90 E6 02 F0 */	stw r7, 0x2f0(r6)
/* 803C5D80  91 0B 00 00 */	stw r8, 0(r11)
/* 803C5D84  88 FD 02 B9 */	lbz r7, 0x2b9(r29)
/* 803C5D88  89 1D 02 B8 */	lbz r8, 0x2b8(r29)
/* 803C5D8C  54 E7 82 1E */	rlwinm r7, r7, 0x10, 8, 0xf
/* 803C5D90  89 3D 02 BA */	lbz r9, 0x2ba(r29)
/* 803C5D94  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 803C5D98  89 5D 02 BB */	lbz r10, 0x2bb(r29)
/* 803C5D9C  51 27 44 2E */	rlwimi r7, r9, 8, 0x10, 0x17
/* 803C5DA0  51 47 06 3E */	rlwimi r7, r10, 0, 0x18, 0x1f
/* 803C5DA4  90 EB 00 04 */	stw r7, 4(r11)
/* 803C5DA8  81 06 02 F0 */	lwz r8, 0x2f0(r6)
/* 803C5DAC  38 E8 00 08 */	addi r7, r8, 8
/* 803C5DB0  90 E6 02 F0 */	stw r7, 0x2f0(r6)
/* 803C5DB4  91 88 00 00 */	stw r12, 0(r8)
/* 803C5DB8  90 08 00 04 */	stw r0, 4(r8)
/* 803C5DBC  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 803C5DC0  2C 00 00 00 */	cmpwi r0, 0
/* 803C5DC4  41 82 00 18 */	beq lbl_803C5DDC
/* 803C5DC8  4B FF FD 89 */	bl mMsg_DrawNameWindow
/* 803C5DCC  7F A3 EB 78 */	mr r3, r29
/* 803C5DD0  7F C4 F3 78 */	mr r4, r30
/* 803C5DD4  7F E5 FB 78 */	mr r5, r31
/* 803C5DD8  4B FF FE 3D */	bl mMsg_DrawWindowClientName
lbl_803C5DDC:
/* 803C5DDC  7F A3 EB 78 */	mr r3, r29
/* 803C5DE0  7F C4 F3 78 */	mr r4, r30
/* 803C5DE4  7F E5 FB 78 */	mr r5, r31
/* 803C5DE8  4B FF FE B9 */	bl mMsg_DrawWindowTurnButton
/* 803C5DEC  48 00 00 AC */	b lbl_803C5E98
lbl_803C5DF0:
/* 803C5DF0  81 46 02 D0 */	lwz r10, 0x2d0(r6)
/* 803C5DF4  3D 20 80 66 */	lis r9, mMsg_init_disp@ha /* 0x8065A0D0@ha */
/* 803C5DF8  3D 00 FA 00 */	lis r8, 0xFA00 /* 0xFA0000FF@ha */
/* 803C5DFC  3D 80 DE 00 */	lis r12, 0xde00
/* 803C5E00  38 0A 00 08 */	addi r0, r10, 8
/* 803C5E04  39 29 A0 D0 */	addi r9, r9, mMsg_init_disp@l /* 0x8065A0D0@l */
/* 803C5E08  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 803C5E0C  3C E0 80 66 */	lis r7, con_kaiwa2_modelT@ha /* 0x80659BE0@ha */
/* 803C5E10  38 07 9B E0 */	addi r0, r7, con_kaiwa2_modelT@l /* 0x80659BE0@l */
/* 803C5E14  39 08 00 FF */	addi r8, r8, 0x00FF /* 0xFA0000FF@l */
/* 803C5E18  91 8A 00 00 */	stw r12, 0(r10)
/* 803C5E1C  91 2A 00 04 */	stw r9, 4(r10)
/* 803C5E20  81 66 02 D0 */	lwz r11, 0x2d0(r6)
/* 803C5E24  38 EB 00 08 */	addi r7, r11, 8
/* 803C5E28  90 E6 02 D0 */	stw r7, 0x2d0(r6)
/* 803C5E2C  91 0B 00 00 */	stw r8, 0(r11)
/* 803C5E30  88 FD 02 B9 */	lbz r7, 0x2b9(r29)
/* 803C5E34  89 1D 02 B8 */	lbz r8, 0x2b8(r29)
/* 803C5E38  54 E7 82 1E */	rlwinm r7, r7, 0x10, 8, 0xf
/* 803C5E3C  89 3D 02 BA */	lbz r9, 0x2ba(r29)
/* 803C5E40  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 803C5E44  89 5D 02 BB */	lbz r10, 0x2bb(r29)
/* 803C5E48  51 27 44 2E */	rlwimi r7, r9, 8, 0x10, 0x17
/* 803C5E4C  51 47 06 3E */	rlwimi r7, r10, 0, 0x18, 0x1f
/* 803C5E50  90 EB 00 04 */	stw r7, 4(r11)
/* 803C5E54  81 06 02 D0 */	lwz r8, 0x2d0(r6)
/* 803C5E58  38 E8 00 08 */	addi r7, r8, 8
/* 803C5E5C  90 E6 02 D0 */	stw r7, 0x2d0(r6)
/* 803C5E60  91 88 00 00 */	stw r12, 0(r8)
/* 803C5E64  90 08 00 04 */	stw r0, 4(r8)
/* 803C5E68  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 803C5E6C  2C 00 00 00 */	cmpwi r0, 0
/* 803C5E70  41 82 00 18 */	beq lbl_803C5E88
/* 803C5E74  4B FF FC DD */	bl mMsg_DrawNameWindow
/* 803C5E78  7F A3 EB 78 */	mr r3, r29
/* 803C5E7C  7F C4 F3 78 */	mr r4, r30
/* 803C5E80  7F E5 FB 78 */	mr r5, r31
/* 803C5E84  4B FF FD 91 */	bl mMsg_DrawWindowClientName
lbl_803C5E88:
/* 803C5E88  7F A3 EB 78 */	mr r3, r29
/* 803C5E8C  7F C4 F3 78 */	mr r4, r30
/* 803C5E90  7F E5 FB 78 */	mr r5, r31
/* 803C5E94  4B FF FE 0D */	bl mMsg_DrawWindowTurnButton
lbl_803C5E98:
/* 803C5E98  39 61 00 20 */	addi r11, r1, 0x20
/* 803C5E9C  4B CD 50 85 */	bl func_8009AF20
/* 803C5EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C5EA4  7C 08 03 A6 */	mtlr r0
/* 803C5EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 803C5EAC  4E 80 00 20 */	blr 

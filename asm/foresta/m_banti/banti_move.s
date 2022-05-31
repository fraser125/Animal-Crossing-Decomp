lbl_80377C64:
/* 80377C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80377C68  7C 08 02 A6 */	mflr r0
/* 80377C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80377C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80377C74  7C 7F 1B 78 */	mr r31, r3
/* 80377C78  4B FF F6 49 */	bl banti_chk_disp_left
/* 80377C7C  48 06 45 D5 */	bl mPlib_Get_address_able_display
/* 80377C80  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80377C84  38 C4 C9 68 */	addi r6, r4, banti@l /* 0x8112C968@l */
/* 80377C88  80 A6 00 00 */	lwz r5, 0(r6)
/* 80377C8C  7C 05 18 00 */	cmpw r5, r3
/* 80377C90  41 82 00 7C */	beq lbl_80377D0C
/* 80377C94  80 86 00 08 */	lwz r4, 8(r6)
/* 80377C98  2C 03 00 03 */	cmpwi r3, 3
/* 80377C9C  38 E0 00 00 */	li r7, 0
/* 80377CA0  38 04 00 01 */	addi r0, r4, 1
/* 80377CA4  90 06 00 08 */	stw r0, 8(r6)
/* 80377CA8  40 82 00 14 */	bne lbl_80377CBC
/* 80377CAC  2C 00 00 32 */	cmpwi r0, 0x32
/* 80377CB0  40 81 00 40 */	ble lbl_80377CF0
/* 80377CB4  38 E0 00 01 */	li r7, 1
/* 80377CB8  48 00 00 38 */	b lbl_80377CF0
lbl_80377CBC:
/* 80377CBC  2C 05 00 00 */	cmpwi r5, 0
/* 80377CC0  41 82 00 1C */	beq lbl_80377CDC
/* 80377CC4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80377CC8  41 81 00 0C */	bgt lbl_80377CD4
/* 80377CCC  2C 03 00 02 */	cmpwi r3, 2
/* 80377CD0  40 82 00 20 */	bne lbl_80377CF0
lbl_80377CD4:
/* 80377CD4  38 E0 00 01 */	li r7, 1
/* 80377CD8  48 00 00 18 */	b lbl_80377CF0
lbl_80377CDC:
/* 80377CDC  2C 00 00 32 */	cmpwi r0, 0x32
/* 80377CE0  41 81 00 0C */	bgt lbl_80377CEC
/* 80377CE4  2C 03 00 02 */	cmpwi r3, 2
/* 80377CE8  40 82 00 08 */	bne lbl_80377CF0
lbl_80377CEC:
/* 80377CEC  38 E0 00 01 */	li r7, 1
lbl_80377CF0:
/* 80377CF0  2C 07 00 01 */	cmpwi r7, 1
/* 80377CF4  40 82 00 20 */	bne lbl_80377D14
/* 80377CF8  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80377CFC  38 00 00 00 */	li r0, 0
/* 80377D00  90 06 00 08 */	stw r0, 8(r6)
/* 80377D04  90 64 C9 68 */	stw r3, banti@l(r4)  /* 0x8112C968@l */
/* 80377D08  48 00 00 0C */	b lbl_80377D14
lbl_80377D0C:
/* 80377D0C  38 00 00 00 */	li r0, 0
/* 80377D10  90 06 00 08 */	stw r0, 8(r6)
lbl_80377D14:
/* 80377D14  7F E3 FB 78 */	mr r3, r31
/* 80377D18  4B FF F7 41 */	bl banti_calc_disp_alpha_rate
/* 80377D1C  4B FF FE 69 */	bl banti_time_check
/* 80377D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80377D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80377D28  7C 08 03 A6 */	mtlr r0
/* 80377D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80377D30  4E 80 00 20 */	blr 

lbl_80421D44:
/* 80421D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421D48  7C 08 02 A6 */	mflr r0
/* 80421D4C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80421D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80421D58  7C 9F 23 78 */	mr r31, r4
/* 80421D5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80421D60  7C 7E 1B 78 */	mr r30, r3
/* 80421D64  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80421D68  3C 63 00 02 */	addis r3, r3, 2
/* 80421D6C  88 03 41 63 */	lbz r0, 0x4163(r3)
/* 80421D70  28 00 00 00 */	cmplwi r0, 0
/* 80421D74  41 82 00 18 */	beq lbl_80421D8C
/* 80421D78  4B FF FD 61 */	bl regist_mask_gohome
/* 80421D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80421D80  40 82 00 20 */	bne lbl_80421DA0
/* 80421D84  38 60 00 02 */	li r3, 2
/* 80421D88  48 00 00 44 */	b lbl_80421DCC
lbl_80421D8C:
/* 80421D8C  4B FF FD C5 */	bl regist_mask_maskcat
/* 80421D90  2C 03 00 00 */	cmpwi r3, 0
/* 80421D94  40 82 00 0C */	bne lbl_80421DA0
/* 80421D98  38 60 00 02 */	li r3, 2
/* 80421D9C  48 00 00 30 */	b lbl_80421DCC
lbl_80421DA0:
/* 80421DA0  7F C3 F3 78 */	mr r3, r30
/* 80421DA4  7F E4 FB 78 */	mr r4, r31
/* 80421DA8  38 A0 00 51 */	li r5, 0x51
/* 80421DAC  4B FF AF 39 */	bl show_actor_at_wade_checkfgcol
/* 80421DB0  3C 03 00 01 */	addis r0, r3, 1
/* 80421DB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80421DB8  40 82 00 0C */	bne lbl_80421DC4
/* 80421DBC  38 60 00 02 */	li r3, 2
/* 80421DC0  48 00 00 0C */	b lbl_80421DCC
lbl_80421DC4:
/* 80421DC4  30 03 FF FF */	addic r0, r3, -1
/* 80421DC8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80421DCC:
/* 80421DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421DD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80421DD8  7C 08 03 A6 */	mtlr r0
/* 80421DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80421DE0  4E 80 00 20 */	blr 

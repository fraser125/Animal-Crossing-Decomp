lbl_805F6C5C:
/* 805F6C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F6C60  7C 08 02 A6 */	mflr r0
/* 805F6C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F6C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F6C6C  7C 9F 23 78 */	mr r31, r4
/* 805F6C70  93 C1 00 08 */	stw r30, 8(r1)
/* 805F6C74  7C 7E 1B 78 */	mr r30, r3
/* 805F6C78  80 04 00 00 */	lwz r0, 0(r4)
/* 805F6C7C  28 00 00 18 */	cmplwi r0, 0x18
/* 805F6C80  41 81 00 E8 */	bgt lbl_805F6D68
/* 805F6C84  3C A0 80 6D */	lis r5, lit_2757@ha /* 0x806D0C58@ha */
/* 805F6C88  54 00 10 3A */	slwi r0, r0, 2
/* 805F6C8C  38 A5 0C 58 */	addi r5, r5, lit_2757@l /* 0x806D0C58@l */
/* 805F6C90  7C 05 00 2E */	lwzx r0, r5, r0
/* 805F6C94  7C 09 03 A6 */	mtctr r0
/* 805F6C98  4E 80 04 20 */	bctr 
lbl_805F6C9C:
/* 805F6C9C  38 A0 00 00 */	li r5, 0
/* 805F6CA0  38 C0 00 00 */	li r6, 0
/* 805F6CA4  38 E0 00 04 */	li r7, 4
/* 805F6CA8  39 00 00 00 */	li r8, 0
/* 805F6CAC  4B FF FE 21 */	bl mTG_mark_mainX
/* 805F6CB0  7F C3 F3 78 */	mr r3, r30
/* 805F6CB4  7F E4 FB 78 */	mr r4, r31
/* 805F6CB8  38 A0 00 01 */	li r5, 1
/* 805F6CBC  38 C0 00 00 */	li r6, 0
/* 805F6CC0  38 E0 00 04 */	li r7, 4
/* 805F6CC4  39 00 00 00 */	li r8, 0
/* 805F6CC8  4B FF FE 05 */	bl mTG_mark_mainX
/* 805F6CCC  48 00 00 9C */	b lbl_805F6D68
lbl_805F6CD0:
/* 805F6CD0  38 A0 00 01 */	li r5, 1
/* 805F6CD4  38 C0 00 00 */	li r6, 0
/* 805F6CD8  38 E0 00 04 */	li r7, 4
/* 805F6CDC  39 00 00 00 */	li r8, 0
/* 805F6CE0  4B FF FD ED */	bl mTG_mark_mainX
/* 805F6CE4  7F C3 F3 78 */	mr r3, r30
/* 805F6CE8  7F E4 FB 78 */	mr r4, r31
/* 805F6CEC  38 A0 00 05 */	li r5, 5
/* 805F6CF0  38 C0 00 00 */	li r6, 0
/* 805F6CF4  38 E0 00 04 */	li r7, 4
/* 805F6CF8  39 00 00 00 */	li r8, 0
/* 805F6CFC  4B FF FD D1 */	bl mTG_mark_mainX
/* 805F6D00  48 00 00 68 */	b lbl_805F6D68
lbl_805F6D04:
/* 805F6D04  38 A0 00 01 */	li r5, 1
/* 805F6D08  38 C0 00 00 */	li r6, 0
/* 805F6D0C  38 E0 00 04 */	li r7, 4
/* 805F6D10  39 00 00 00 */	li r8, 0
/* 805F6D14  4B FF FD B9 */	bl mTG_mark_mainX
/* 805F6D18  7F C3 F3 78 */	mr r3, r30
/* 805F6D1C  7F E4 FB 78 */	mr r4, r31
/* 805F6D20  38 A0 00 09 */	li r5, 9
/* 805F6D24  38 C0 00 00 */	li r6, 0
/* 805F6D28  38 E0 00 04 */	li r7, 4
/* 805F6D2C  39 00 00 00 */	li r8, 0
/* 805F6D30  4B FF FD 9D */	bl mTG_mark_mainX
/* 805F6D34  48 00 00 34 */	b lbl_805F6D68
lbl_805F6D38:
/* 805F6D38  38 A0 00 14 */	li r5, 0x14
/* 805F6D3C  38 C0 00 00 */	li r6, 0
/* 805F6D40  38 E0 00 04 */	li r7, 4
/* 805F6D44  39 00 00 00 */	li r8, 0
/* 805F6D48  4B FF FD 85 */	bl mTG_mark_mainX
/* 805F6D4C  7F C3 F3 78 */	mr r3, r30
/* 805F6D50  7F E4 FB 78 */	mr r4, r31
/* 805F6D54  38 A0 00 12 */	li r5, 0x12
/* 805F6D58  38 C0 00 00 */	li r6, 0
/* 805F6D5C  38 E0 00 04 */	li r7, 4
/* 805F6D60  39 00 00 00 */	li r8, 0
/* 805F6D64  4B FF FD 69 */	bl mTG_mark_mainX
lbl_805F6D68:
/* 805F6D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F6D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F6D70  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F6D74  7C 08 03 A6 */	mtlr r0
/* 805F6D78  38 21 00 10 */	addi r1, r1, 0x10
/* 805F6D7C  4E 80 00 20 */	blr 

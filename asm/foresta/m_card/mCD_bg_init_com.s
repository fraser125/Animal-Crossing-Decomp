lbl_803F7EE0:
/* 803F7EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F7EE4  7C 08 02 A6 */	mflr r0
/* 803F7EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F7EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7EF0  4B CA 2F D9 */	bl func_8009AEC8
/* 803F7EF4  3D 20 00 01 */	lis r9, 0x0001 /* 0x0000A000@ha */
/* 803F7EF8  7C 7A 1B 78 */	mr r26, r3
/* 803F7EFC  7C 9B 23 78 */	mr r27, r4
/* 803F7F00  7C BC 2B 78 */	mr r28, r5
/* 803F7F04  7C DD 33 78 */	mr r29, r6
/* 803F7F08  7C FE 3B 78 */	mr r30, r7
/* 803F7F0C  7D 1F 43 78 */	mr r31, r8
/* 803F7F10  38 69 A0 00 */	addi r3, r9, 0xA000 /* 0x0000A000@l */
/* 803F7F14  4B FF F8 E1 */	bl mCD_malloc_32
/* 803F7F18  2C 1F 00 01 */	cmpwi r31, 1
/* 803F7F1C  90 7D 00 00 */	stw r3, 0(r29)
/* 803F7F20  40 82 00 10 */	bne lbl_803F7F30
/* 803F7F24  38 60 20 00 */	li r3, 0x2000
/* 803F7F28  4B FF F8 CD */	bl mCD_malloc_32
/* 803F7F2C  90 7E 00 00 */	stw r3, 0(r30)
lbl_803F7F30:
/* 803F7F30  80 9D 00 00 */	lwz r4, 0(r29)
/* 803F7F34  28 04 00 00 */	cmplwi r4, 0
/* 803F7F38  41 82 00 C4 */	beq lbl_803F7FFC
/* 803F7F3C  2C 1F 00 00 */	cmpwi r31, 0
/* 803F7F40  41 82 00 18 */	beq lbl_803F7F58
/* 803F7F44  2C 1F 00 01 */	cmpwi r31, 1
/* 803F7F48  40 82 00 B4 */	bne lbl_803F7FFC
/* 803F7F4C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F7F50  28 00 00 00 */	cmplwi r0, 0
/* 803F7F54  41 82 00 A8 */	beq lbl_803F7FFC
lbl_803F7F58:
/* 803F7F58  7F 7F DB 78 */	mr r31, r27
/* 803F7F5C  7F 63 DB 78 */	mr r3, r27
/* 803F7F60  38 A0 00 00 */	li r5, 0
/* 803F7F64  38 C0 00 00 */	li r6, 0
/* 803F7F68  4B C9 85 F5 */	bl CARDMountAsync
/* 803F7F6C  90 7C 00 00 */	stw r3, 0(r28)
/* 803F7F70  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F7F74  2C 00 00 00 */	cmpwi r0, 0
/* 803F7F78  40 82 00 18 */	bne lbl_803F7F90
/* 803F7F7C  80 9A 00 18 */	lwz r4, 0x18(r26)
/* 803F7F80  38 60 00 01 */	li r3, 1
/* 803F7F84  38 04 00 01 */	addi r0, r4, 1
/* 803F7F88  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803F7F8C  48 00 00 74 */	b lbl_803F8000
lbl_803F7F90:
/* 803F7F90  2C 00 FF FA */	cmpwi r0, -6
/* 803F7F94  40 82 00 50 */	bne lbl_803F7FE4
/* 803F7F98  7F 63 DB 78 */	mr r3, r27
/* 803F7F9C  38 80 00 00 */	li r4, 0
/* 803F7FA0  4B C9 7D B1 */	bl CARDCheckAsync
/* 803F7FA4  90 7C 00 00 */	stw r3, 0(r28)
/* 803F7FA8  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F7FAC  2C 00 00 00 */	cmpwi r0, 0
/* 803F7FB0  40 82 00 14 */	bne lbl_803F7FC4
/* 803F7FB4  38 00 00 03 */	li r0, 3
/* 803F7FB8  38 60 00 01 */	li r3, 1
/* 803F7FBC  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803F7FC0  48 00 00 40 */	b lbl_803F8000
lbl_803F7FC4:
/* 803F7FC4  2C 00 FF FA */	cmpwi r0, -6
/* 803F7FC8  41 82 00 0C */	beq lbl_803F7FD4
/* 803F7FCC  2C 00 FF F3 */	cmpwi r0, -13
/* 803F7FD0  40 82 00 0C */	bne lbl_803F7FDC
lbl_803F7FD4:
/* 803F7FD4  7F E3 FB 78 */	mr r3, r31
/* 803F7FD8  4B C9 88 09 */	bl CARDUnmount
lbl_803F7FDC:
/* 803F7FDC  38 60 FF FF */	li r3, -1
/* 803F7FE0  48 00 00 20 */	b lbl_803F8000
lbl_803F7FE4:
/* 803F7FE4  2C 00 FF F3 */	cmpwi r0, -13
/* 803F7FE8  40 82 00 0C */	bne lbl_803F7FF4
/* 803F7FEC  7F 63 DB 78 */	mr r3, r27
/* 803F7FF0  4B C9 87 F1 */	bl CARDUnmount
lbl_803F7FF4:
/* 803F7FF4  38 60 FF FF */	li r3, -1
/* 803F7FF8  48 00 00 08 */	b lbl_803F8000
lbl_803F7FFC:
/* 803F7FFC  38 60 FF FF */	li r3, -1
lbl_803F8000:
/* 803F8000  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8004  4B CA 2F 11 */	bl func_8009AF14
/* 803F8008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F800C  7C 08 03 A6 */	mtlr r0
/* 803F8010  38 21 00 20 */	addi r1, r1, 0x20
/* 803F8014  4E 80 00 20 */	blr 

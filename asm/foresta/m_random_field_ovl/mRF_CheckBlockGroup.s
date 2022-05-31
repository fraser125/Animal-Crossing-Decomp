lbl_80508EBC:
/* 80508EBC  2C 04 00 08 */	cmpwi r4, 8
/* 80508EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508EC4  40 82 00 78 */	bne lbl_80508F3C
/* 80508EC8  3C 80 80 6A */	lis r4, blockGroup@ha /* 0x8069EE60@ha */
/* 80508ECC  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80508ED0  38 64 EE 60 */	addi r3, r4, blockGroup@l /* 0x8069EE60@l */
/* 80508ED4  80 03 00 00 */	lwz r0, 0(r3)
/* 80508ED8  7C 05 00 00 */	cmpw r5, r0
/* 80508EDC  41 80 00 10 */	blt lbl_80508EEC
/* 80508EE0  80 03 00 04 */	lwz r0, 4(r3)
/* 80508EE4  7C 05 00 00 */	cmpw r5, r0
/* 80508EE8  40 81 00 44 */	ble lbl_80508F2C
lbl_80508EEC:
/* 80508EEC  3C 60 80 6A */	lis r3, blockGroup@ha /* 0x8069EE60@ha */
/* 80508EF0  38 63 EE 60 */	addi r3, r3, blockGroup@l /* 0x8069EE60@l */
/* 80508EF4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80508EF8  7C 05 00 00 */	cmpw r5, r0
/* 80508EFC  41 80 00 10 */	blt lbl_80508F0C
/* 80508F00  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80508F04  7C 05 00 00 */	cmpw r5, r0
/* 80508F08  40 81 00 24 */	ble lbl_80508F2C
lbl_80508F0C:
/* 80508F0C  3C 60 80 6A */	lis r3, blockGroup@ha /* 0x8069EE60@ha */
/* 80508F10  38 63 EE 60 */	addi r3, r3, blockGroup@l /* 0x8069EE60@l */
/* 80508F14  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80508F18  7C 05 00 00 */	cmpw r5, r0
/* 80508F1C  41 80 00 18 */	blt lbl_80508F34
/* 80508F20  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80508F24  7C 05 00 00 */	cmpw r5, r0
/* 80508F28  41 81 00 0C */	bgt lbl_80508F34
lbl_80508F2C:
/* 80508F2C  38 60 00 01 */	li r3, 1
/* 80508F30  48 00 00 4C */	b lbl_80508F7C
lbl_80508F34:
/* 80508F34  38 60 00 00 */	li r3, 0
/* 80508F38  48 00 00 44 */	b lbl_80508F7C
lbl_80508F3C:
/* 80508F3C  3C A0 80 6A */	lis r5, blockGroup@ha /* 0x8069EE60@ha */
/* 80508F40  54 84 18 38 */	slwi r4, r4, 3
/* 80508F44  38 05 EE 60 */	addi r0, r5, blockGroup@l /* 0x8069EE60@l */
/* 80508F48  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80508F4C  7C 80 22 14 */	add r4, r0, r4
/* 80508F50  80 64 00 00 */	lwz r3, 0(r4)
/* 80508F54  80 04 00 04 */	lwz r0, 4(r4)
/* 80508F58  7C 05 18 00 */	cmpw r5, r3
/* 80508F5C  90 61 00 08 */	stw r3, 8(r1)
/* 80508F60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80508F64  41 80 00 14 */	blt lbl_80508F78
/* 80508F68  7C 05 00 00 */	cmpw r5, r0
/* 80508F6C  41 81 00 0C */	bgt lbl_80508F78
/* 80508F70  38 60 00 01 */	li r3, 1
/* 80508F74  48 00 00 08 */	b lbl_80508F7C
lbl_80508F78:
/* 80508F78  38 60 00 00 */	li r3, 0
lbl_80508F7C:
/* 80508F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80508F80  4E 80 00 20 */	blr 

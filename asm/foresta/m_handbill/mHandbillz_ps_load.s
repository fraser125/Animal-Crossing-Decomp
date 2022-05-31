lbl_803B2C64:
/* 803B2C64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B2C68  7C 08 02 A6 */	mflr r0
/* 803B2C6C  3C 80 81 17 */	lis r4, ram_799@ha /* 0x811681F8@ha */
/* 803B2C70  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B2C74  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803B2C78  7C 7F 1B 78 */	mr r31, r3
/* 803B2C7C  38 64 81 F8 */	addi r3, r4, ram_799@l /* 0x811681F8@l */
/* 803B2C80  38 80 00 61 */	li r4, 0x61
/* 803B2C84  4B CA A3 E5 */	bl bzero
/* 803B2C88  38 00 00 04 */	li r0, 4
/* 803B2C8C  3C 60 81 17 */	lis r3, ram_799@ha /* 0x811681F8@ha */
/* 803B2C90  90 01 00 08 */	stw r0, 8(r1)
/* 803B2C94  38 83 81 F8 */	addi r4, r3, ram_799@l /* 0x811681F8@l */
/* 803B2C98  38 00 00 61 */	li r0, 0x61
/* 803B2C9C  38 61 00 08 */	addi r3, r1, 8
/* 803B2CA0  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 803B2CA4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803B2CA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 803B2CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2CB0  4B FF FC CD */	bl mHandbillzDMA_body_load
/* 803B2CB4  2C 03 00 00 */	cmpwi r3, 0
/* 803B2CB8  41 82 00 58 */	beq lbl_803B2D10
/* 803B2CBC  3C 60 81 17 */	lis r3, ram_799@ha /* 0x811681F8@ha */
/* 803B2CC0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 803B2CC4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 803B2CC8  38 63 81 F8 */	addi r3, r3, ram_799@l /* 0x811681F8@l */
/* 803B2CCC  4B CA A3 51 */	bl func_8005D01C
/* 803B2CD0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 803B2CD4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803B2CD8  7C 04 18 40 */	cmplw r4, r3
/* 803B2CDC  40 81 00 18 */	ble lbl_803B2CF4
/* 803B2CE0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803B2CE4  7C 83 20 50 */	subf r4, r3, r4
/* 803B2CE8  38 A0 00 20 */	li r5, 0x20
/* 803B2CEC  7C 60 1A 14 */	add r3, r0, r3
/* 803B2CF0  48 00 7D 59 */	bl mem_clear
lbl_803B2CF4:
/* 803B2CF4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803B2CF8  38 C0 00 02 */	li r6, 2
/* 803B2CFC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 803B2D00  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 803B2D04  4B FF F4 3D */	bl mHandbill_Change_ControlCode
/* 803B2D08  38 60 00 01 */	li r3, 1
/* 803B2D0C  48 00 00 08 */	b lbl_803B2D14
lbl_803B2D10:
/* 803B2D10  38 60 00 00 */	li r3, 0
lbl_803B2D14:
/* 803B2D14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B2D18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803B2D1C  7C 08 03 A6 */	mtlr r0
/* 803B2D20  38 21 00 30 */	addi r1, r1, 0x30
/* 803B2D24  4E 80 00 20 */	blr 

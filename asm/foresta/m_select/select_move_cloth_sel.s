lbl_80628C28:
/* 80628C28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80628C2C  7C 08 02 A6 */	mflr r0
/* 80628C30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80628C34  39 61 00 20 */	addi r11, r1, 0x20
/* 80628C38  4B A7 22 99 */	bl func_8009AED0
/* 80628C3C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 80628C40  7C 7D 1B 78 */	mr r29, r3
/* 80628C44  38 64 80 00 */	addi r3, r4, 0x8000 /* 0x00008000@l */
/* 80628C48  4B D6 D2 C9 */	bl chkTrigger
/* 80628C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80628C50  40 82 00 14 */	bne lbl_80628C64
/* 80628C54  38 60 10 00 */	li r3, 0x1000
/* 80628C58  4B D6 D2 B9 */	bl chkTrigger
/* 80628C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80628C60  41 82 00 10 */	beq lbl_80628C70
lbl_80628C64:
/* 80628C64  38 00 00 01 */	li r0, 1
/* 80628C68  90 1D 02 00 */	stw r0, 0x200(r29)
/* 80628C6C  48 00 01 1C */	b lbl_80628D88
lbl_80628C70:
/* 80628C70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80628C74  38 60 40 00 */	li r3, 0x4000
/* 80628C78  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80628C7C  3F E4 00 02 */	addis r31, r4, 2
/* 80628C80  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 80628C84  A0 84 10 8A */	lhz r4, 0x108a(r4)
/* 80628C88  3B C4 DB FF */	addi r30, r4, -9217
/* 80628C8C  4B D6 D1 E5 */	bl chkButton
/* 80628C90  2C 03 00 00 */	cmpwi r3, 0
/* 80628C94  3B 80 00 01 */	li r28, 1
/* 80628C98  41 82 00 08 */	beq lbl_80628CA0
/* 80628C9C  3B 80 00 0A */	li r28, 0xa
lbl_80628CA0:
/* 80628CA0  38 60 04 00 */	li r3, 0x400
/* 80628CA4  4B D6 D1 CD */	bl chkButton
/* 80628CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80628CAC  41 82 00 44 */	beq lbl_80628CF0
/* 80628CB0  38 60 04 00 */	li r3, 0x400
/* 80628CB4  4B D6 D2 5D */	bl chkTrigger
/* 80628CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80628CBC  41 82 00 10 */	beq lbl_80628CCC
/* 80628CC0  38 00 FF F0 */	li r0, -16
/* 80628CC4  7F DE E2 14 */	add r30, r30, r28
/* 80628CC8  90 1D 02 20 */	stw r0, 0x220(r29)
lbl_80628CCC:
/* 80628CCC  80 7D 02 20 */	lwz r3, 0x220(r29)
/* 80628CD0  38 03 00 01 */	addi r0, r3, 1
/* 80628CD4  90 1D 02 20 */	stw r0, 0x220(r29)
/* 80628CD8  80 1D 02 20 */	lwz r0, 0x220(r29)
/* 80628CDC  2C 00 00 06 */	cmpwi r0, 6
/* 80628CE0  40 82 00 10 */	bne lbl_80628CF0
/* 80628CE4  38 00 00 00 */	li r0, 0
/* 80628CE8  7F DE E2 14 */	add r30, r30, r28
/* 80628CEC  90 1D 02 20 */	stw r0, 0x220(r29)
lbl_80628CF0:
/* 80628CF0  38 60 08 00 */	li r3, 0x800
/* 80628CF4  4B D6 D1 7D */	bl chkButton
/* 80628CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80628CFC  41 82 00 44 */	beq lbl_80628D40
/* 80628D00  38 60 08 00 */	li r3, 0x800
/* 80628D04  4B D6 D2 0D */	bl chkTrigger
/* 80628D08  2C 03 00 00 */	cmpwi r3, 0
/* 80628D0C  41 82 00 10 */	beq lbl_80628D1C
/* 80628D10  38 00 00 10 */	li r0, 0x10
/* 80628D14  7F DC F0 50 */	subf r30, r28, r30
/* 80628D18  90 1D 02 20 */	stw r0, 0x220(r29)
lbl_80628D1C:
/* 80628D1C  80 7D 02 20 */	lwz r3, 0x220(r29)
/* 80628D20  38 03 FF FF */	addi r0, r3, -1
/* 80628D24  90 1D 02 20 */	stw r0, 0x220(r29)
/* 80628D28  80 1D 02 20 */	lwz r0, 0x220(r29)
/* 80628D2C  2C 00 FF FA */	cmpwi r0, -6
/* 80628D30  40 82 00 10 */	bne lbl_80628D40
/* 80628D34  38 00 00 00 */	li r0, 0
/* 80628D38  7F DC F0 50 */	subf r30, r28, r30
/* 80628D3C  90 1D 02 20 */	stw r0, 0x220(r29)
lbl_80628D40:
/* 80628D40  20 7E 00 FE */	subfic r3, r30, 0xfe
/* 80628D44  38 00 00 FF */	li r0, 0xff
/* 80628D48  7C 63 03 96 */	divwu r3, r3, r0
/* 80628D4C  7C 69 03 A6 */	mtctr r3
/* 80628D50  2C 1E 00 00 */	cmpwi r30, 0
/* 80628D54  40 80 00 0C */	bge lbl_80628D60
lbl_80628D58:
/* 80628D58  3B DE 00 FF */	addi r30, r30, 0xff
/* 80628D5C  42 00 FF FC */	bdnz lbl_80628D58
lbl_80628D60:
/* 80628D60  38 00 00 FF */	li r0, 0xff
/* 80628D64  7C 1E 03 96 */	divwu r0, r30, r0
/* 80628D68  7C 09 03 A6 */	mtctr r0
/* 80628D6C  2C 1E 00 FE */	cmpwi r30, 0xfe
/* 80628D70  40 81 00 0C */	ble lbl_80628D7C
lbl_80628D74:
/* 80628D74  3B DE FF 01 */	addi r30, r30, -255
/* 80628D78  42 00 FF FC */	bdnz lbl_80628D74
lbl_80628D7C:
/* 80628D7C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80628D80  38 1E 24 01 */	addi r0, r30, 0x2401
/* 80628D84  B0 03 10 8A */	sth r0, 0x108a(r3)
lbl_80628D88:
/* 80628D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80628D8C  4B A7 21 91 */	bl func_8009AF1C
/* 80628D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80628D94  7C 08 03 A6 */	mtlr r0
/* 80628D98  38 21 00 20 */	addi r1, r1, 0x20
/* 80628D9C  4E 80 00 20 */	blr 

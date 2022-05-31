lbl_80487D58:
/* 80487D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487D5C  7C 08 02 A6 */	mflr r0
/* 80487D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487D64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487D68  7C 7F 1B 78 */	mr r31, r3
/* 80487D6C  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 80487D70  2C 00 00 00 */	cmpwi r0, 0
/* 80487D74  41 82 00 0C */	beq lbl_80487D80
/* 80487D78  2C 00 00 01 */	cmpwi r0, 1
/* 80487D7C  40 82 00 1C */	bne lbl_80487D98
lbl_80487D80:
/* 80487D80  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487D84  7F E3 FB 78 */	mr r3, r31
/* 80487D88  38 80 00 09 */	li r4, 9
/* 80487D8C  7D 89 03 A6 */	mtctr r12
/* 80487D90  4E 80 04 21 */	bctrl 
/* 80487D94  48 00 00 40 */	b lbl_80487DD4
lbl_80487D98:
/* 80487D98  38 00 00 0D */	li r0, 0xd
/* 80487D9C  38 A0 25 4A */	li r5, 0x254a
/* 80487DA0  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 80487DA4  38 00 FF FF */	li r0, -1
/* 80487DA8  38 80 00 02 */	li r4, 2
/* 80487DAC  90 BF 01 AC */	stw r5, 0x1ac(r31)
/* 80487DB0  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 80487DB4  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487DB8  7D 89 03 A6 */	mtctr r12
/* 80487DBC  4E 80 04 21 */	bctrl 
/* 80487DC0  4B F3 78 E9 */	bl func_803BF6A8
/* 80487DC4  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80487DC8  4B F3 81 FD */	bl mMsg_Set_continue_msg_num
/* 80487DCC  4B F3 78 DD */	bl func_803BF6A8
/* 80487DD0  4B F3 8F 59 */	bl mMsg_Set_ForceNext
lbl_80487DD4:
/* 80487DD4  38 00 00 00 */	li r0, 0
/* 80487DD8  98 1F 01 85 */	stb r0, 0x185(r31)
/* 80487DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487DE4  7C 08 03 A6 */	mtlr r0
/* 80487DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80487DEC  4E 80 00 20 */	blr 

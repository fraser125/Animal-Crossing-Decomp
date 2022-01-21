.include "macros.inc"

.section .text

.org 0x800A8AF8

.global TRKTargetContinue
TRKTargetContinue:
/* 800A8AF8 000A5A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A8AFC 000A5A5C  7C 08 02 A6 */	mflr r0
/* 800A8B00 000A5A60  38 60 00 00 */	li r3, 0
/* 800A8B04 000A5A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A8B08 000A5A68  4B FF E3 65 */	bl TRKTargetSetStopped
/* 800A8B0C 000A5A6C  4B FF FB F1 */	bl UnreserveEXI2Port
/* 800A8B10 000A5A70  4B FF E0 01 */	bl TRKSwapAndGo
/* 800A8B14 000A5A74  4B FF FC 19 */	bl ReserveEXI2Port
/* 800A8B18 000A5A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A8B1C 000A5A7C  38 60 00 00 */	li r3, 0
/* 800A8B20 000A5A80  7C 08 03 A6 */	mtlr r0
/* 800A8B24 000A5A84  38 21 00 10 */	addi r1, r1, 0x10
/* 800A8B28 000A5A88  4E 80 00 20 */	blr 

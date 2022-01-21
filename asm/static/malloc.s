.include "macros.inc"

.section .text

.org 0x8005CF08

.global malloc
malloc:
/* 8005CF08 00059E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CF0C 00059E6C  7C 08 02 A6 */	mflr r0
/* 8005CF10 00059E70  3C A0 80 20 */	lis r5, malloc_arena@ha
/* 8005CF14 00059E74  7C 64 1B 78 */	mr r4, r3
/* 8005CF18 00059E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CF1C 00059E7C  38 65 6F 30 */	addi r3, r5, malloc_arena@l
/* 8005CF20 00059E80  4B FF F2 59 */	bl __osMalloc
/* 8005CF24 00059E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CF28 00059E88  7C 08 03 A6 */	mtlr r0
/* 8005CF2C 00059E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CF30 00059E90  4E 80 00 20 */	blr 

.global free
free:
/* 8005CF34 00059E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CF38 00059E98  7C 08 02 A6 */	mflr r0
/* 8005CF3C 00059E9C  3C A0 80 20 */	lis r5, malloc_arena@ha
/* 8005CF40 00059EA0  7C 64 1B 78 */	mr r4, r3
/* 8005CF44 00059EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CF48 00059EA8  38 65 6F 30 */	addi r3, r5, malloc_arena@l
/* 8005CF4C 00059EAC  4B FF F5 A5 */	bl __osFree
/* 8005CF50 00059EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CF54 00059EB4  7C 08 03 A6 */	mtlr r0
/* 8005CF58 00059EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CF5C 00059EBC  4E 80 00 20 */	blr 

.global DisplayArena
DisplayArena:
/* 8005CF60 00059EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CF64 00059EC4  7C 08 02 A6 */	mflr r0
/* 8005CF68 00059EC8  3C 60 80 20 */	lis r3, malloc_arena@ha
/* 8005CF6C 00059ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CF70 00059ED0  38 63 6F 30 */	addi r3, r3, malloc_arena@l
/* 8005CF74 00059ED4  4B FF F9 C9 */	bl __osDisplayArena
/* 8005CF78 00059ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CF7C 00059EDC  7C 08 03 A6 */	mtlr r0
/* 8005CF80 00059EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CF84 00059EE4  4E 80 00 20 */	blr 

.global GetFreeArena
GetFreeArena:
/* 8005CF88 00059EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CF8C 00059EEC  7C 08 02 A6 */	mflr r0
/* 8005CF90 00059EF0  3C C0 80 20 */	lis r6, malloc_arena@ha
/* 8005CF94 00059EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CF98 00059EF8  7C 80 23 78 */	mr r0, r4
/* 8005CF9C 00059EFC  7C 64 1B 78 */	mr r4, r3
/* 8005CFA0 00059F00  38 66 6F 30 */	addi r3, r6, malloc_arena@l
/* 8005CFA4 00059F04  7C A6 2B 78 */	mr r6, r5
/* 8005CFA8 00059F08  7C 05 03 78 */	mr r5, r0
/* 8005CFAC 00059F0C  4B FF F8 85 */	bl __osGetFreeArena
/* 8005CFB0 00059F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CFB4 00059F14  7C 08 03 A6 */	mtlr r0
/* 8005CFB8 00059F18  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CFBC 00059F1C  4E 80 00 20 */	blr 

.global MallocInit
MallocInit:
/* 8005CFC0 00059F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CFC4 00059F24  7C 08 02 A6 */	mflr r0
/* 8005CFC8 00059F28  3C A0 80 20 */	lis r5, malloc_arena@ha
/* 8005CFCC 00059F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CFD0 00059F30  7C 60 1B 78 */	mr r0, r3
/* 8005CFD4 00059F34  38 65 6F 30 */	addi r3, r5, malloc_arena@l
/* 8005CFD8 00059F38  7C 85 23 78 */	mr r5, r4
/* 8005CFDC 00059F3C  7C 04 03 78 */	mr r4, r0
/* 8005CFE0 00059F40  4B FF EC 79 */	bl __osMallocInit
/* 8005CFE4 00059F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CFE8 00059F48  7C 08 03 A6 */	mtlr r0
/* 8005CFEC 00059F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CFF0 00059F50  4E 80 00 20 */	blr 

.global MallocCleanup
MallocCleanup:
/* 8005CFF4 00059F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CFF8 00059F58  7C 08 02 A6 */	mflr r0
/* 8005CFFC 00059F5C  3C 60 80 20 */	lis r3, malloc_arena@ha
/* 8005D000 00059F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005D004 00059F64  38 63 6F 30 */	addi r3, r3, malloc_arena@l
/* 8005D008 00059F68  4B FF ED DD */	bl __osMallocCleanup
/* 8005D00C 00059F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005D010 00059F70  7C 08 03 A6 */	mtlr r0
/* 8005D014 00059F74  38 21 00 10 */	addi r1, r1, 0x10
/* 8005D018 00059F78  4E 80 00 20 */	blr 
